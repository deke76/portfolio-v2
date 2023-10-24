class Social < ApplicationRecord
  # def initialize(
  #   user_url = "https://api.stackexchange.com/2.3/users/20403091?order=desc&sort=name&site=stackoverflow",
  #   questions_url = "https://api.stackexchange.com/2.3/users/20403091/questions?order=desc&sort=activity&site=stackoverflow"
  # )
  #   puts "initializing"
  #   @user_url = user_url
  #   @questions_url = questions
  # end

  def snake_name
    self.name.gsub(" ", "_").downcase
  end

  def self.stack_user
    user_url = "https://api.stackexchange.com/2.3/users/20403091?order=desc&sort=name&site=stackoverflow"

    Rails.cache.fetch(
      "stack_profile",
      expires_in: 24.hours
    ) do
      HTTParty.get(user_url)["items"][0]
    end
  end

  def self.stack_questions
    questions_url = "https://api.stackexchange.com/2.3/users/20403091/questions?order=desc&sort=activity&site=stackoverflow"

    Rails.cache.fetch(
      [self, :stack_questions],
      expires_in: 24.hours
    ) do
      HTTParty.get(questions_url)["items"]
    end
  end

  def self.git_user
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

  def self.git_repos(url)
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

  def self.repo_tags(repo)
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
