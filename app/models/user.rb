class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, foreign_key: :author_id, dependent: :destroy
  has_many :purchases, foreign_key: :author_id, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :email, presence: true, length: { minimum: 2, maximum: 50 }
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }
end
