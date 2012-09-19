##
# Helper to perform get, post, and put requests on the Push API
##

module PushapiHelper

  class << self
  
    def api_get(endpoint)
      conn = Faraday.new(:url => V1_PUSHAPI_URL) do |faraday|
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      response = conn.get endpoint
      ActiveSupport::JSON.decode response.body
    end
  
    def api_put(endpoint, body)
      conn = Faraday.new(:url => V1_PUSHAPI_URL) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      response = conn.put endpoint, body
      ActiveSupport::JSON.decode response.body
    end
  
    def api_post(endpoint, body)
      conn = Faraday.new(:url => V1_PUSHAPI_URL) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      response = conn.post endpoint, body
      ActiveSupport::JSON.decode response.body
    end
  
  end

end