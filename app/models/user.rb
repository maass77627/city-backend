class User < ApplicationRecord
    has_many :cities
    validates :username, presence: true
end
