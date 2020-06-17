class ApplicationController < ActionController::Base
<<<<<<< HEAD
  helper_method :current_user
  helper_method :logged_in?
=======
  helper_method :current_user,:current_product,:current_funding
helper_method :logged_in?
>>>>>>> ebfe0910480e820179ce8ae15f19ff096c480e4a
  def current_user    
    User.find_by(id: session[:user_id])  
  end

  def logged_in?    
  !current_user.nil?  
<<<<<<< HEAD
  end

  def current_product
    Product.find_by(id: session[:product_id])
=======
end

def current_product
Product.find_by(id: session[:product_id])
end

def current_funding
  Funding.find_by(id: session[:funding_id])
>>>>>>> ebfe0910480e820179ce8ae15f19ff096c480e4a
  end
  
end
