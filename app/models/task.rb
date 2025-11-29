class Task < ApplicationRecord
  belongs_to :user
  belongs_to :board

  has_one_attached :eyecatch
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :due_date, presence: true
end
