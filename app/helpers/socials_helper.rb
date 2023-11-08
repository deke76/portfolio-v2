module SocialsHelper
  def repo_updated(repo)
    status = Time.at(Time.parse(repo["updated_at"]).getutc).strftime("updated %b %d, '%y")
  end

  def question_status(question)
    status = Time.at(question["creation_date"]).strftime("asked %b %d, '%y")
  end

  def social_content
    if @social.content_link != nil
      "socials/content/sociablekit"
    else
      "socials/content/profile_content"
    end
  end

  def repo_updated(repo)
    status = Time.at(Time.parse(repo["updated_at"]).getutc).strftime("updated %b %d, '%y")
  end

  def question_status(question)
    status = Time.at(question["creation_date"]).strftime("asked %b %d, '%y")
  end
end
