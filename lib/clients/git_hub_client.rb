class GitHubClient

  ROOT_ENDPOINT = 'https://api.github.com'
  ACCESS_TOKEN = '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'

  def initialize
    @http_client = setup_http_client
  end

  def create_gist(params, public: true) # Добавлен параметр public, т.к могу юзать ток публичные гисты, я из Крыма (санкции)
    params[:public] = public # Добавлена информация о публичности в параметры Gist
    @http_client.post('gists') do |request|
      request.headers['Authorization'] = "token #{ACCESS_TOKEN}"
      request.headers['Content-Type'] = 'application/json'
      request.body = params.to_json
    end
  end

  private

  def setup_http_client
    Faraday.new(url: ROOT_ENDPOINT)
  end
end
