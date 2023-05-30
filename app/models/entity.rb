class Entity < ApplicationRecord
  belongs_to :author, foreign_key: :user_id, class_name: 'User'
  has_and_belongs_to_many :groups

  validates :name, :amount, presence: true
end
