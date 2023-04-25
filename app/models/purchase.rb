class Purchase < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups

  validates :name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :group_id, presence: true
  validates :author_id, presence: true
end
