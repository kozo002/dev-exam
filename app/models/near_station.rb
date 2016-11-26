class NearStation < ApplicationRecord
  validates :name, presence: true
  validates :line_name, presence: true
  validates :take_minutes, presence: true
end
