class ApplicationController < ActionController::Base
  helper_method :current_user,:current_product,:current_funding
helper_method :logged_in?
  def current_user    
    User.find_by(id: session[:user_id])  
  end

  def logged_in?    
  !current_user.nil?  
end

def current_product
Product.find_by(id: session[:product_id])
end

def current_funding
  Funding.find_by(id: session[:funding_id])
  end
  
end
