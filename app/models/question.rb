class Question < ApplicationRecord
  validates :faq, presence: true
  validates :answer, presence: true
end
