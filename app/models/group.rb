class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :entities

  validates :name, :icon, presence: true

  def sum_group
    entities.map(&:amount).reduce(:+)&.round(2) || 0
  end

end
