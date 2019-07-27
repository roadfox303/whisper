class WhisperLog < ApplicationRecord
  validates :comment, length: { in: 1..140 }
end
