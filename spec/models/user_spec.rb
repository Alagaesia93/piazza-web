# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to have_secure_password }

  describe 'validations' do
    subject { build(:user) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_length_of(:password).is_at_least(8) }
  end

  describe 'normalizations' do
    xit { is_expected.to normalize(:name).from(' John  Doe  ').to('John Doe') }
    it { is_expected.to normalize(:email).from(' foo@bar.com ').to('foo@bar.com') }
  end

  describe 'associations' do
    it { is_expected.to have_many(:memberships) }
    it { is_expected.to have_many(:organizations).through(:memberships) }
  end
end
