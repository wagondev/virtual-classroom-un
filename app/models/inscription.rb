class Inscription < ApplicationRecord
    belongs_to :Group
    belongs_to :User
end
