# frozen_string_literal: true
require 'net/http'
require 'uri'

class CallNorris
  def get_joke
    uri = URI('https://api.chucknorris.io/jokes/random')
    res = Net::HTTP.get_response(uri)
    if res.is_a?(Net::HTTPSuccess)
      JSON.parse(res.body)
    else
      "Ooops! We've got a problem."
    end
  end
end
