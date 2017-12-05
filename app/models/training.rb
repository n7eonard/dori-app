# == Schema Information
#
# Table name: trainings
#
#  id          :integer          not null, primary key
#  duration    :integer
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Training < ApplicationRecord
  has_many :cards
end
