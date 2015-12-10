class Reward < ActiveRecord::Base
	belongs_to :project
	has_many :pledges
	has_many :users, through: :pledges

	validates :name, :min_dollar_amount, presence: true
	validates :min_dollar_amount, numericality: {greater_than: 0}

	def current_quantity

		return self.quantity - self.pledges.count

	end
end
