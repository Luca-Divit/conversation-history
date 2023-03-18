class Comment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :project

  # Validations
  validates :content, presence: true
end
