# == Schema Information
#
# Table name: transactions
#
#  id              :bigint           not null, primary key
#  total_price     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  order_status_id :bigint
#  postal_fee_id   :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_transactions_on_order_status_id  (order_status_id)
#  index_transactions_on_postal_fee_id    (postal_fee_id)
#  index_transactions_on_user_id          (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_status_id => order_statuses.id)
#  fk_rails_...  (postal_fee_id => postal_fees.id)
#  fk_rails_...  (user_id => users.id)
#
class Transaction < ApplicationRecord
	belongs_to :user
	belongs_to :orderstatus, optional: true
end
