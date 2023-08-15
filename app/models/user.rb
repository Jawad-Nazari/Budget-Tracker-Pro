class User < ApplicationRecord
  has_many :sections, foreign_key: :user_id, dependent: :delete_all
  has_many :Transactions, foreign_key: :user_id, dependent: :delete_all

  validates :name, presence: true, length: { maximum: 60 }
end
