class WidgetAlbum < ActiveRecord::Base

  API_KEY = "786fc16167e734b4f3094f987f0b7f0a"
   
  def photos
    initialize_flickr

    Fleakr::Objects::Photo.find_all_by_set_id(gallery_id).map do |photo|
      { :small_url => photo.small.url,
        :medium_url => photo.medium.url,
        :title => photo.title,
        :description => photo.description
	}
    end
  end

  def title
    initialize_flickr

    Fleakr::Objects::Set.find_by_id(gallery_id).title
  end

  private

  def initialize_flickr
    require 'fleakr'

    Fleakr.api_key = API_KEY
  end

  def self.get_login(wedding)
    WeddingAuthentication.find_by_wedding_id_and_service_provider_id(wedding.id, service_provider).login
  end
end
