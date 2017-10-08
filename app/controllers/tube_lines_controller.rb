class TubeLinesController < ApplicationController
  before_action :define_urls

  def index
    get_tube_status = RestClient.get @base_url + @tfl_api_tube_service
    @tube_lines = ActiveSupport::JSON.decode(get_tube_status)
  end

  private

  def define_urls
    @base_url = "https://api.tfl.gov.uk"
    @tfl_api_tube_service = "/line/mode/tube/status"
  end
end
