class UserController < ApplicationController
  def show
    @nickname = current_user.nickname
    @items = current_user.items
  end

  def index
  end
end