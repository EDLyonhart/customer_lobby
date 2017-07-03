class Customer < ApplicationRecord

has_many :reviews, through: :companies

end
