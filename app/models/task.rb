class Task < ApplicationRecord
  belongs_to :user
  belongs_to :board

  # 画像を1つ添付できるようにする
  has_one_attached :eyecatch

  validates :title, presence: true
  validates :content, presence: true
  validates :due_date, presence: true
end
