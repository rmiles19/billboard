class Song < ApplicationRecord
  belongs_to :artist, optional: true
  belongs_to :magazine, optional: true
end
