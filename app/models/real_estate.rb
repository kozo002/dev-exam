class RealEstate < ApplicationRecord
  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :built_at, presence: true

  def age
    return 0 if built_at.blank?
    now = Date.today
    now.year - built_at.year - (built_at.to_date.change(year: now.year) > now ? 1 : 0)
  end

  def age=(val)
    now = Date.today
    self.built_at = now.change(year: now.year - val).beginning_of_year
  end
end
