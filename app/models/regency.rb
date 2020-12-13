# == Schema Information
#
# Table name: regencies
#
#  code          :integer          not null, primary key
#  name          :string           not null
#  province_code :integer          not null
#
# Indexes
#
#  index_regencies_on_province_code  (province_code)
#
class Regency < ActiveRecord::Base
  self.primary_key = 'code'

  belongs_to :province, foreign_key: :province_code
  has_many :districts, foreign_key: :regency_code
end
