require 'open-uri'

class Material < ApplicationRecord
  scope :published, -> {all}
end
