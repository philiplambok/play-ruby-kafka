# frozen_string_literal: true

require 'net/http'

class MessageHandler
  include Phobos::Handler

  def consume(payload, _metadata)
    uri = URI('http://localhost:4000/api/messages')
    Net::HTTP.post_form(uri, payload: payload)
  end
end
