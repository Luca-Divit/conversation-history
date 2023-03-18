class Project < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :comments, dependent: :destroy

  # Validations
  validates :name, presence: true
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: %w[in_progress completed on_hold cancelled pending] }

  def self.statuses
    {
      "in_progress" => "in_progress",
      "completed" => "completed",
      "on_hold" => "on_hold",
      "cancelled" => "cancelled",
      "pending" => "pending"
    }
  end
end
