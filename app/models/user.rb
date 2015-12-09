class User < ActiveRecord::Base
	has_secure_password

	has_many :comments
	has_many :pledges

	has_many :pledged_projects, through: :pledges, :source => :project
	has_many :owned_projects, :class_name => "Project", :foreign_key => :owner_id

	validates :username, :email, presence: true
	validates :username, :email, uniqueness: true
end
