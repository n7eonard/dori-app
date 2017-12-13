# == Schema Information
#
# Table name: pools
#
#  id            :integer          not null, primary key
#  address       :string
#  opening_times :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  name          :string
#  size          :integer
#  open          :boolean          default(TRUE)
#  latitude      :float
#  longitude     :float
#  price         :integer
#  treatment     :string
#  lane          :integer
#  metro         :string
#  phone         :string
#

require 'test_helper'

class PoolTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
