# == Schema Information
#
# Table name: postal_fees
#
#  id         :bigint           not null, primary key
#  name       :string
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class PostalFee < ApplicationRecord
	has_many :transactions, dependent: :nullify
end
