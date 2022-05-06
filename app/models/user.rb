class User < ApplicationRecord
    has_many :exercises

    validates :nickname, presence: true
end
