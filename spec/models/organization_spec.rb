# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Organization, type: :model do
  it { is_expected.to have_many(:memberships) }
  it { is_expected.to have_many(:members).through(:memberships) }
end
