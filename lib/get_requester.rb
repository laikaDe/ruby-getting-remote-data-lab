# Write your code here

require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    def initialize(url)
        @url = url
    end

    def get_response_body
        url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
        #1.Sends a GET request to the url passed in on initialization
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        #2.Return the body of the response.
        response.body
    end

    def parse_json

        
        #1.Have get_response_body method to send a request
        json_response = get_response_body
        #2.Return a ruby array or ash made up of data converteed from the response of that request.
        JSON.parse(json_response)
    end
end