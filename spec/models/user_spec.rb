require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:is_admin) }
    it { is_expected.to validate_presence_of(:is_activist) }
  end
end
