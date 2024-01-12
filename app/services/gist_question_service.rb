class GistQuestionService

  def initialize(question, client: nil)
    @question = question
    @test = @question.test
    @client = client || GitHubClient.new
  end

  def call(public: true) # Публичные гист
    @client.create_gist(gist_params(public))
  end

  private

  def gist_params(public) # Публичные
    {
      description: "A question about #{@test.title} from TestGuru",
      public: public,  # Добавляем параметр public в параметры Gist
      files: {
        'test-guru-question.txt' => {
          content: gist_content
        }
      }
    }
  end

  def gist_content
    content = [@question.body]
    content += @question.answers.pluck(:body)
    content.join("\n")
  end
end
