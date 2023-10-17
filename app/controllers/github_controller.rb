class GithubController < ApplicationController
  def index
    @github_profile = Social.git_user
    @github_repos = Social.git_repos @github_profile["repos_url"]
    @github_repo_tags ||= {}
    @github_repos.each do |repo|
      languages ||= Social.repo_tags repo
      @github_repo_tags[repo["name"]] = languages.keys
    end
  end
end
