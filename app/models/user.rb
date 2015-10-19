class User < ActiveRecord::Base
	has_many :posts
	validates :username, uniqueness: true, presence: true
end
