class Reward < ActiveRecord::Base
	has_one :pledge
	has_one :project, through: :pledge
end
