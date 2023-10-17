module GithubHelper
  def repo_updated(repo)
    status = Time.at(Time.parse(repo["updated_at"]).getutc).strftime("updated %b %d, '%y")
  end
end
