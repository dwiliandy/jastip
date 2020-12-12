# == Schema Information
#
# Table name: order_statuses
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OrderStatus < ApplicationRecord
	has_many :transactions, dependent: :nullify


	NAME_OPTIONS = [
		["Prepared", 1],
		["Delivered", 2],
		["Accepted", 3],
		["Finished", 4],
		["Cancelled", 5]
	]

	class << self
		def name_list
			NAME_OPTIONS.map do |x,y|
				{
					:id => y,
					:name => x
				}
			end
		end
	end
end
