class Todo < ApplicationRecord
  validates :name, presence: true

  # Set default status to false (not completed) when creating new todos
  after_initialize :set_default_status, if: :new_record?

  private

  def set_default_status
    self.status ||= false
  end
end
