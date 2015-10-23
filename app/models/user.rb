class User < ActiveRecord::Base
	has_many :posts
	validates :username, uniqueness: true, presence: true, length: {maximum: 25}
	validates :email, uniqueness: true, presence: true, length: { maximum: 50 }
	validates :password, confirmation: true,presence: true, length: {minimum: 3 }

end
