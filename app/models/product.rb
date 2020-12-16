# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  description :text
#  image       :string
#  name        :string
#  price       :float
#  status      :integer
#  stock       :integer
#  region_id   :bigint           not null
#
# Indexes
#
#  index_products_on_region_id  (region_id)
#
# Foreign Keys
#
#  fk_rails_...  (region_id => regions.id)
#
class Product < ApplicationRecord
	mount_uploader :image, ImageUploader
	belongs_to :region
	enum status: {available: 0, run_out: 1}
end
