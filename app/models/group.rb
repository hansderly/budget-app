class Group < ApplicationRecord
  belongs_to :user
  has_many :entities

  validatable :name, :icon, presence: true
end
