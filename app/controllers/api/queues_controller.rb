# frozen_string_literal: true

module Api
  class QueuesController < ApplicationController
    def create
      payload = params[:payload]
      MessageProcedur.producer.publish(
        topic: 'test',
        payload: payload,
        key: 'partition and message key'
      )
      render json: { payload: payload }
    end
  end
end
