class Project < ActiveRecord::Base
	has_many :pledges
	has_many :pledging_users, through: :pledges, :source => :user

	has_many :comments
	has_many :commenting_users, through: :comments, :source => :user

	has_many :rewards
	accepts_nested_attributes_for :rewards, reject_if: :all_blank, allow_destroy: true

	belongs_to :owner, :class_name => "User"

	validates :title, :funding_target, :start_date, :end_date, presence: true
	validates :title, uniqueness: true
	#validates :start_date, numericality: {greater_than_or_equal_to: Time.now.beginning_of_minute}
	#validates :end_date, numericality: {greater_than: :start_date}
	validates :funding_target, numericality: {greater_than: 0}

	def total_funding
		current_funding = 0.0
		self.pledges.each do |pledge|
			current_funding += pledge.dollar_amount if pledge.dollar_amount
		end
		current_funding
	end

	def funding_percent
		current_funding = total_funding

		funding_percent = (current_funding / self.funding_target * 100).round(2)
		"#{funding_percent}%"
	end

	def filter
		return self.rewards.select{|reward| reward.current_quantity > 0 }.sort_by(&:min_dollar_amount)
	end

end
