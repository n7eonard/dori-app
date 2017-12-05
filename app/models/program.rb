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

class Program < ApplicationRecord
  belongs_to :user
  has_many :cards
end
