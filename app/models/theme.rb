class Theme < ApplicationRecord
  has_many :posts
  belongs_to :topic
end
