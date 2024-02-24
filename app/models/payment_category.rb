class PaymentCategory < ApplicationRecord
    validates :name, presence: true
end
