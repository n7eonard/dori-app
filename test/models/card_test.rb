# == Schema Information
#
# Table name: cards
#
#  id             :integer          not null, primary key
#  start_dateTime :datetime
#  end_dateTime   :datetime
#  training_id    :integer
#  pool_id        :integer
#  program_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
