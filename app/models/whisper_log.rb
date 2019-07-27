class WhisperLog < ApplicationRecord
  validates :textarea, length: { in: 1..140 }
end
