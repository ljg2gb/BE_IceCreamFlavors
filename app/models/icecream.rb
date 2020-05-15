class Icecream < ApplicationRecord
    validates :favor, presence: true
    validates :flavor, uniqueness: {message: "We already have %{attribute} in the system."}
end
