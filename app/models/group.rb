class Group < ApplicationController
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :purchases, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :author_id, presence: true
  validates :icon, presence: true
end
