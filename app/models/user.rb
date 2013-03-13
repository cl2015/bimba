class User < ActiveRecord::Base
  attr_accessible :user_name, :passwd

  def self.create_user(name, password) 
    User.create(:user_name=>name, :passwd=>encrypt(password))
  end

  def self.authenticate(name, password)
    user = self.find(:first, :conditions =>["user_name=? and passwd=?",name, encrypt(password)])
  end

  protected
    def self.encrypt(password)
      Digest::SHA1.hexdigest("--#{password}--")
    end
end
