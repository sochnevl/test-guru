class TestsController < ApplicationController
  before_action :authenticate_user!

  def index
   @tests = Test.all
  end

  def start
    @test = Test.find(params[:id])
    current_user.tests.push(@test)
    redirect_to current_user.tests_passing(@test)
  end
end
