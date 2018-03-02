class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :magazine, optional: true
end
