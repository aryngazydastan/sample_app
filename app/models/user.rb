class User < ActiveRecord::Base
<<<<<<< HEAD
	before_save { self.email = email.downcase }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
=======
	before_save { email.downcase! }
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
>>>>>>> 5b6eaa2c2149344410c04eb249627d7ab299612e
	validates :email, presence: true, 
						format: { with: VALID_EMAIL_REGEX },
						uniqueness: { case_sensetive: false }
	validates :password, length: { minimum: 6 }
	has_secure_password
end
<<<<<<< HEAD
=======

>>>>>>> 5b6eaa2c2149344410c04eb249627d7ab299612e
