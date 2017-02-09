require 'rails_helper'

RSpec.describe PropertiesController, type: :controller do

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET new" do
    it "renders :new template" do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns new Property to @property" do
      expect(assigns(:property)).to be_a_new(Property)
    end
  end

  describe "POST create" do
    let(:property) { FactoryGirl.build(:property) }
    it "redirects to properties#show" do
      post :create, params: { property: property.attributes }
       expect(response).to redirect_to(properties_path)
       expect(assign(:action).property.title).to eq(property.title)
    end
  end
end