class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :is_admin, :is_activist, presence: true
end
