class Destination < ApplicationRecord
  belongs_to :tag

  validates :tag_id, presence: true
  validate :existing_tag

  private

  def existing_tag
    errors.add(:tag_id, "must be an existing tag") unless Tag.exists?(id: tag_id)
  end
end
