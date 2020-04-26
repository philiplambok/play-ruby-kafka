# frozen_string_literal: true

module Api
  class MessagesController < ApplicationController
    def index
      render json: Message.all
    end

    def create
      Message.create!(payload: params[:payload])
    end
  end
end
