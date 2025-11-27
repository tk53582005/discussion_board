class Task < ApplicationRecord
  belongs_to :user
  belongs_to :board

  validates :title, presence: true
  validates :content, presence: true
  validates :due_date, presence: true
end
