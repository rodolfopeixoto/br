  class PropertiesController < ApplicationController

  def index
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)

    if @property.valid?
       @property.save
        flash[:notice] = I18n.t('.controllers.property.create.flash.notice')
        redirect_to @property
    else
        render :new
    end
  end

  def show
    @property = Property.find(params[:id])
  end

  private

  def property_params
    params.require(:property).permit(:title, :accommodates, :bathrooms, :number_of_rooms,:furnished, :single_room, :share_room, :price, :description, :archetype_id )
  end
end
