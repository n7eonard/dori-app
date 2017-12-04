class Card < ApplicationRecord
  belongs_to :training
  belongs_to :pool
  belongs_to :program
end
