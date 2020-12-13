# == Schema Information
#
# Table name: provinces
#
#  code :integer          not null, primary key
#  name :string           not null
#
class Province < ActiveRecord::Base
  self.primary_key = 'code'

  has_many :regencies, foreign_key: :province_code
  has_many :districts, through: :regencies
end
