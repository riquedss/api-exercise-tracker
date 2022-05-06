class Exercise < ApplicationRecord
    belongs_to :user
    validates :description, :duration, :date, presence: true
end
