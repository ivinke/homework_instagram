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

  def new_form
  end

  def create_row
    d = Photo.new
    d.source = params[:the_source]
    d.caption = params[:the_caption]
    d.save
  end

  def destroy
    @e = params[:id]
    f = Photo.find_by({:id => @e })
    f.destroy
  end

  def edit_form
    @g = params[:id]
    h = Photo.find_by({:id => @g })
    @i = h.source
    @j = h.caption
  end

  def update
    @k = params[:id]
    l = Photo.find_by({:id => @k })
    l.source = params[:the_source]
    l.caption = params[:the_caption]
    l.save
  end

end
