class UsersController < ApplicationController
  def home
  	@subjects = Subject.all
  end

end
