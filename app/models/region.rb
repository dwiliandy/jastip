# == Schema Information
#
# Table name: regions
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord
	has_many :products, dependent: :nullify

	REGION_OPTIONS = [
		["Kalimantan", 1],
		["Jawa", 2],
		["Sulawesi", 3],
		["Sumatra", 4],
		["Papua", 5],
		["Maluku", 6],
		["Nusa Tenggara", 7]
	]


	class << self
		def regions_list
			REGION_OPTIONS.map do |x,y|
				{
					:id => y,
					:name => x
				}
			end
		end
	end
end
