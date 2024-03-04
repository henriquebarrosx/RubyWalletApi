class Payment < ApplicationRecord
  belongs_to :payment_category
  belongs_to :payment_frequency
end
