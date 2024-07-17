class Exchange < ApplicationRecord
    belongs_to :user
    belongs_to :exchanging_user, class_name: "User"
end
