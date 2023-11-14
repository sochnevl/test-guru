module QuestionsHelper

  def question_header(question)
    question.persisted? ? "Edit #{question.test.title} Question" : "Create New #{@test.title} Question"
  ends

  def github_url(author, repo)
    link_to 'TestGuru', "https://github.com/#{author}/#{repo}", target: "_blank",  rel: 'nofollow', rel: 'noopener'
  end

  def current_year
    Time.now.year
  end
end