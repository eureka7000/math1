class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable, 
  #        :authentication_keys => [:signin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, 
         :validatable, 
         # :authentication_keys => {email: true, login: false}
         :authentication_keys => {login: false}

  # attr_accessor :signin
  attr_accessor :login

  # validates :username, :uniqueness => {:case_sensitive => false}
  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  }


  # def self.find_first_by_auth_conditions(warden_conditions)
  #      conditions = warden_conditions.dup
  #  #     where(conditions).where(["lower(username) = :value OR lower(email)
  #  # = :value", { :value => signin.downcase }]).first
  #   if login = conditions.delete(:login)
  #     where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => signin.downcase }]).first
  #   else
  #     where(conditions).first
  #   end
  # end

  def self.find_for_database_authentication(warden_conditions)
      puts "self.find_for_database_authentication(warden_conditions)"
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", 
          { :value => login.downcase }]).first
      else
        where(conditions.to_h).first
      end
  end
  
  # def self.find_first_by_auth_conditions(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if login = conditions.delete(:signin)
  #     where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => signin.downcase }]).first
  #   else
  #     if conditions[:username].nil?
  #       where(conditions).first
  #     else
  #       where(username: conditions[:username]).first
  #     end
  #   end
  # end
end
