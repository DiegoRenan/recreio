class ContractModel < ApplicationRecord
	validates :title, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
	validates :body, presence: true, length: { maximum: 50000 }
end
