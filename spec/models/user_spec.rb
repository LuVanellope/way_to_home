require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:email) }

    context 'roles' do
      context 'valid roles' do
        let(:user) { FactoryBot.build(:user, roles: %w[admin activist]) }

        it 'should be valid' do
          expect(user.valid?).to eq(true)
          expect(user.errors.blank?).to eq(true)
        end
      end

      context 'invalid roles' do
        let(:user) { FactoryBot.build(:user, roles: %w[amdin buyer]) }

        it 'should be valid' do
          expect(user.valid?).to eq(false)
          expect(user.errors[:roles]).to match_array(["amdin isn't a valid role", "buyer isn't a valid role"])
        end
      end
    end
  end
end
