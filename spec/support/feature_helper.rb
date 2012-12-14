require "spec_helper"
 
module FeatureHelperMethods
 
  def logout_user(user = @current_user)
    Capybara.reset_sessions!
    visit destroy_user_session_url
  end
 
  def login_as(sym)
    logout_user if @current_user
    @current_user = FactoryGirl.create(sym.to_sym)
    visit new_user_session_path
    fill_in I18n.t('activerecord.attributes.user.email'), :with => @current_user.email
    fill_in I18n.t('activerecord.attributes.user.password'), :with => @current_user.password
    click_button I18n.t('devise.shared.links.sign_in')  
  end
 
end