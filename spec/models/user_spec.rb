require "rails_helper"

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  let(:user) { build(:user) }

  it "has a valid factory" do
    expect(user).to be_valid
  end

  describe "validations" do
    it { is_expected.to be_valid }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
    it { is_expected.to allow_value("foo@bar.com").for(:email) }
    it { is_expected.to_not allow_value("@bar.com").for(:email) }
    it { is_expected.to_not allow_value("foo@").for(:email) }
  end
end
