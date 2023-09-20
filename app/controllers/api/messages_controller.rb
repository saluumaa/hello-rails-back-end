class Api::MessagesController < ApplicationController
    def index
        @messages = Message.order('RANDOM()').limit(1)
        render json: @messages
    end
end
