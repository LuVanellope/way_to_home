class User < ApplicationRecord
  ROLES = ['admin' 'activist']

  validates :email, presence: true, uniqueness: true
end
