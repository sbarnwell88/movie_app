class Film < ApplicationRecord
    has_many :users, through: :favorites
end
