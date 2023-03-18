class Project < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :comments, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: %w[in_progress completed on_hold cancelled pending] }
end
