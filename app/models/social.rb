class Social < ApplicationRecord
  belongs_to :icon

  def snake_name
    self.name.gsub(" ", "_").downcase
  end

  def content
    Rails.cache.fetch(
      "#{self.name}_content",
      expires_in: 24.hours
    ) do 
      HTTParty.get(self.content_link)
    end
  end

  def stack_overflow_user
    user_url = "https://api.stackexchange.com/2.3/users/20403091?order=desc&sort=name&site=stackoverflow"

    Rails.cache.fetch(
      "stack_profile",
      expires_in: 24.hours
    ) do
      HTTParty.get(user_url)["items"][0]
    end
  end

  def stack_overflow_content
    questions_url = "https://api.stackexchange.com/2.3/users/20403091/questions?order=desc&sort=activity&site=stackoverflow"

    Rails.cache.fetch(
      "stack_questions",
      expires_in: 24.hours
    ) do
      HTTParty.get(questions_url)["items"]
    end
  end

  def github_user
    git_user_url = "https://api.github.com/user"

    Rails.cache.fetch(
      "git_user",
      expires_in: 24.hours
    ) do
      HTTParty.get(git_user_url, :headers => {
        "Accept": "application/vnd.github+json",
        "Authorization": "Bearer #{ENV.fetch("GIT_PAT")}",
        "X-GitHub-Api-Version": "2022-11-28"
      })
    end
  end

  def github_content
    git_user = self.github_user
    git_content ||= {}
    git_content["repos"] = self.git_repos git_user["repos_url"]
    git_content["tags"] ||= {}
    git_content["repos"].each do |repo|
      languages ||= self.repo_tags repo
      git_content["tags"][repo["name"]] = languages.keys
    end
    return git_content
  end

  private 
    def git_repos(url)
      Rails.cache.fetch(
        "git_repos",
        expires_in: 24.hours
      ) do
        HTTParty.get(url, :headers => {
          "Accept": "application/vnd.github+json",
          "Authorization": "Bearer #{ENV.fetch("GIT_PAT")}",
          "X-GitHub-Api-Version": "2022-11-28"
        })
      end
    end

    def repo_tags(repo)
      Rails.cache.fetch(
        "github_#{repo["name"]}_tags",
        expires_in: 24.hours
      ) do
        HTTParty.get(repo["languages_url"], :headers => {
          "Accept": "application/vnd.github+json",
          "Authorization": "Bearer #{ENV.fetch("GIT_PAT")}",
          "X-GitHub-Api-Version": "2022-11-28"
        })
      end
    end
end
