class Tip < ApplicationRecord
  validates :description, presence: true

  def self.random_tip
    Tip.all.sample
  end
end
