class User < ApplicationRecord
  ROLES = %w[admin activist].freeze

  validates :email, presence: true, uniqueness: true
  validates :roles, array_inclusion: { in: ROLES }
end
