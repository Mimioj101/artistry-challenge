class Artist < ApplicationRecord
    has_many :studios
    has_many :instruments, through: :studios

    validates :name, presence: true
    validates :title, uniqueness: true
end
