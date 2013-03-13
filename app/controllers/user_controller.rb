class UserController < ApplicationController
  def login
    puts params
    respond_to do |format|
      format.html { redirect_to :controller=>'members', :notice => 'Welcom back' }
    end
  end
end
