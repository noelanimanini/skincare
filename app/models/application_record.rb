class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # def current_user
  #   @user = User.find_by(id: session[:user_id])
  # end 
end
