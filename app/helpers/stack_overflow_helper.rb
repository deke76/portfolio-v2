module StackOverflowHelper
  def question_status(question)
    status = Time.at(question["creation_date"]).strftime("asked %b %d, '%y")
  end
end
