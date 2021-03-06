class CardsController < ApplicationController

  require "payjp"
  before_action :set_card, only: [:show, :delete,]

  def new
    if user_signed_in?
      card = Card.where(user_id: current_user.id)
      redirect_to action: "show" if card.exists?
    else
      redirect_to root_path,notice:"ログインして下さい"
    end
  end

  def pay
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"] 
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(
        card: params['payjp-token']
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action:"show"
      else
        redirect_to action:"pay"
      end
    end
  end

  def delete
    if @card.present?
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      customer.delete
      @card.delete
    end
      redirect_to action: "new"
  end

  def show
    # if user_signed_in?
    #   @card = Card.find_by(user_id: current_user.id)
    if @card.blank?
      redirect_to action: "new"
    else
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(@card.customer_id)
      @default_card_information = customer.cards.retrieve(@card.card_id)
    end
    # else
    #   redirect_to root_path,notice:"ログインして下さい"
    # end
  end
  
  private
  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end


end
