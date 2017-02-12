require 'rails_helper'

RSpec.feature 'The user can navigate between screens' do


   before do
    visit root_path
   end

   scenario 'click in logo' do
    find(:css, "a.brand-logo").click
    expect(page.current_path).to eq root_path
  end

  scenario 'click btn main menu' do
    within '#main-menu-nav' do
      click_link I18n.t('.menu.register_fraternity')
    end
    expect(current_path).to eq new_property_path
  end

  scenario 'click link main menu sign up' do
    within '#main-menu-nav' do
      click_link I18n.t('.menu.signup')
    end
    expect(current_path).to eq new_user_registration_path
  end

  scenario 'click link main menu sign in' do
    within '#main-menu-nav' do
      click_link I18n.t('.menu.signin')
    end
    expect(current_path).to eq new_user_session_path
  end


  scenario 'click btn main menu' do
    within '#mobile-demo' do
      click_link I18n.t('.menu.register_fraternity')
    end
    expect(current_path).to eq new_property_path
  end

  scenario 'click link main menu sign up' do
    within '#mobile-demo' do
      click_link I18n.t('.menu.signup')
    end
    expect(current_path).to eq new_user_registration_path
  end

  scenario 'click link main menu sign in' do
    within '#mobile-demo' do
      click_link I18n.t('.menu.signin')
    end
    expect(current_path).to eq new_user_session_path
  end
end