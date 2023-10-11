module StackOverflowHelper
  def question_status(question)
    # puts question
    # if question["is_answered"] then
      # puts "question has been answered"
    # end
    status = Time.at(question["creation_date"]).strftime("asked %b %d, '%y")
  end
end
