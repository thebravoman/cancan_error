class Episode < ApplicationRecord
  scope :published, -> {all}
end
