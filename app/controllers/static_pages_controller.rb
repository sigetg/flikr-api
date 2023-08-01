class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    @photos = flickr.photos.getRecent
  end
end
