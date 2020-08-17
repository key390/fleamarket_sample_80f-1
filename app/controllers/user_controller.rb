class UserController < ApplicationController
  def show
    @nickname = current_user.nickname
  end
end
