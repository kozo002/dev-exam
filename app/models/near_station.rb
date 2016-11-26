class NearStation < ApplicationRecord
  belongs_to :real_estate, required: true

  validates :name, presence: true
  validates :line_name, presence: true
  validates :take_minutes, presence: true
end
