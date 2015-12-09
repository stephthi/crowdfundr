class Project < ActiveRecord::Base
	has_many :pledges
	has_many :pledging_users, through: :pledges, :source => :user

	has_many :comments
	has_many :commenting_users, through: :comments, :source => :user

	has_many :rewards

	belongs_to :owner, :class_name => "User"

	validates :title, :funding_target, :start_date, :end_date, presence: true
	validates :title, uniqueness: true
	validates :start_date, numericality: {greater_than_or_equal_to: Time.now.beginning_of_minute}
	validates :end_date, numericality: {greater_than: :start_date}
	validates :funding_target, numericality: {only_integer: true, greater_than: 0}
end
