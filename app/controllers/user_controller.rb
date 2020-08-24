class UserController < ApplicationController
  def show
    @nickname = current_user.nickname
  end

  def index
  end
end
