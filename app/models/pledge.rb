class Pledge < ActiveRecord::Base
	belongs_to :user
	belongs_to :project
	belongs_to :reward

	validates :dollar_amount, presence: true
	validates :dollar_amount, numericality: {greater_than: 0}

	#make sure the loop goes through the lowest minimum amount reward to the highest
	#select and sort call

	#the loop does not stop if it hits a 0 reward.quantity
	#

	def set_reward
		rewards = self.project.rewards.select{|reward| reward.current_quantity > 0 }.sort_by(&:min_dollar_amount)
		rewards.each do |reward|
			if self.dollar_amount >= reward.min_dollar_amount
				self.reward = reward
			else
				return
			end
		end
	end

end
