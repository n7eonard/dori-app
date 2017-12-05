# == Schema Information
#
# Table name: pools
#
#  id            :integer          not null, primary key
#  address       :string
#  opening_times :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Pool < ApplicationRecord
  has_many :cards
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
