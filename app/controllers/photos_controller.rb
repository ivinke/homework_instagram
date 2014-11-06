class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
      @c = params[:id]
       z = Photo.find_by({:id => @c })
       @a = z.source
       @b = z.caption
  end
end
