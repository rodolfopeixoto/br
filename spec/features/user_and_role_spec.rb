# require 'rails_helper'

# RSpec.feature "Users" do
#   describe "with users and roles" do
#     def login_in_as(user)
#       visit new_user_session_path
#       fill_in("user_email", with: user.email)
#       fill_in("user_password", with: user.password)
#       click_button("Log in")
#     end

#     let(:user) { FactoryGirl.create(:user) }

#     it "allow a logged-in user to view the property index page" do
#       login_in_as(user)
#       visit(properties_path)
#       expect(current_path).to eq(properties_path)
#     end

#     it "does not allow user to see the property page if not logged in" do
#       visit(properties_path)
#       expect(current_path).to eq(new_user_session_path)
#     end

#   end

#   describe "roles" do
#     let(:property) { FactoryGirl.create(:property) }

#     it "allows a user who is part of a property to see that property" do
#       property.roles.create(user: user)
#       login_in_as(user)
#       visit(property_path(property))
#       expect(current_path).to eq(property_path(property))
#     end

#     it "does not allow a user who is not part of a property to see that property" do
#       log_in_as(user)
#       visit(property_path(property))
#       expect(current_path).not_to eq(property_path(property))
#     end
#   end
# end