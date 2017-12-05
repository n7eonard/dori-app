# == Schema Information
#
# Table name: programs
#
#  id             :integer          not null, primary key
#  swimming_level :string
#  cards_builder  :jsonb
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class ProgramTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
