require 'test_helper'

class PledgeTest < ActiveSupport::TestCase

  def setup
  	#@pledge_one = Pledge.first
    @pledge_one = Pledge.new(dollar_amount: 100, project_id: Project.first.id, user_id: User.first.id)
  end

  test "pledge has an associated user and project" do
    assert @pledge_one.user != nil && @pledge_one.project != nil
  end

  test "set_reward method sets a reward for a pledge" do
  	@pledge_one.set_reward
  	assert @pledge_one.reward != nil
	end
end
