# == Schema Information
#
# Table name: trainings
#
#  id          :integer          not null, primary key
#  duration    :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  level       :string
#

class Training < ApplicationRecord
  has_many :cards
end
