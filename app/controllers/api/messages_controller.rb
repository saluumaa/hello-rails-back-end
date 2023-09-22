class Api::MessagesController < ApplicationController
  def index
    @message = Message.order('RANDOM()').limit(1)
    render json: @message
  end
end
