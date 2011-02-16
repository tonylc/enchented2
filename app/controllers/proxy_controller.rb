class ProxyController < ApplicationController

  def proxy
    render :text => Net::HTTP.get(URI.parse(params[:url]))
  end

end