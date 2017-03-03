  class PropertiesController < ApplicationController

  def index
  end

  def new
    @property = Property.new
    @property.build_rule
    @property.build_comfort
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
    params.require(:property).permit(:title, :accommodates,
                                     :bathrooms, :number_of_rooms,:furnished,
                                     :single_room, :share_room, :price, :description,
                                     :archetype_id,
                                     rule_attributes: [:id, :description, :created_at, :updated_at, :_destroy],
                                     comfort_attributes: [ :id, :kitchen, :tv, :air_conditioning, :washing_machine,
                                                           :dryer, :garage, :cabo_tv, :pet, :smoke, :accessibility,
                                                           :elevator, :intercom, :concierge, :pool, :service_area,
                                                           :gym, :electric_iron, :notebook_space, :private_entrance,
                                                            :_destroy
                                                          ]
                                     )
  end
end
