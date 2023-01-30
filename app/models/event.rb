class Event < ApplicationRecord
  has_many :comments
  belongs_to :status
end
