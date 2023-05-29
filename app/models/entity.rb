class Entity < ApplicationRecord
  belongs_to :author, foreign_key: :user_id, class_name: 'User'
  has_many :groups

  validatable :name, :amount, presence: true
end
