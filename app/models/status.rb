class Status < ActiveRecord::Base
	attr_accessible :content, :user_id, :created_at, :updated_at
	belongs_to :user

	validates :content, { presence: true, length: {minimum: 2}}
	validates :user, {presence: true}
end
