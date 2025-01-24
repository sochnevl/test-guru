class Admin::GistsController < Admin::BaseController

  def index
    @gists = Gist.order(created_at: :desc)
  end
end
