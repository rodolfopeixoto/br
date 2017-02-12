require 'rails_helper'

RSpec.describe PropertiesController, type: :controller do

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    let(:property) { FactoryGirl.create(:property) }
    it 'assigns the requested property to @property' do
      get :show, params: { id: property }
      expect(assigns(:property)).to eq(property)
    end

    it 'renders the :show template' do
      get :show, params: { id: property }
      expect(response).to render_template(:show)
    end
  end

  describe 'GET new' do

    it 'renders :new template' do
      get :new
      expect(response).to render_template(:new)
    end

    it 'assigns new Property to @property' do
      get :new
      expect(assigns(:property)).to be_a_new(Property)
    end
  end

  describe 'POST create' do

    context 'valid data' do


    let(:valid_data) { FactoryGirl.attributes_for(:property) }

      it 'redirects to properties#show' do
        post :create, params: { property: valid_data }
         expect(response).to redirect_to(property_path(assigns[:property]))
      end

      it 'crete new property in database' do
        expect {
           post :create, params: { property: valid_data }
        }.to change(Property, :count).by(1)
      end
    end

   context 'invalid data' do


    let(:invalid_data) { FactoryGirl.attributes_for(:property, title: '') }

     it 'renders :new template' do
      post :create, params: { property: invalid_data }
      expect(response).to render_template(:new)
     end

     it 'doesn\'t create new property in the database' do
      expect {
        post :create, params: { property: invalid_data }
      }.not_to change(Property, :count)
     end
   end

  end
end