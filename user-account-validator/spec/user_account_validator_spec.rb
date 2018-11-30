require "spec_helper"
require_relative "../user_account_validator"

RSpec.describe UserAccountValidator do
  let(:account) { account = UserAccountValidator.new({email:"dara@email.com",username:"dhoy",name:"Dara"}) }
  let(:typo) { typo = UserAccountValidator.new({email:"daraemail.com",username:"dhoy",name:"Dara"}) }
  let(:blank) { blank = UserAccountValidator.new }

  describe "#email" do
    it "returns the account's email" do
      expect(account.email).to eq("dara@email.com")
    end

    it "raises an error if email is missing '@'" do
      expect { typo.email }.to raise_error(MissingEmailError, "email is undefined: 'daraemail.com'")
    end

    it "raises an error if email is undefined" do
      expect { blank.email }.to raise_error(MissingEmailError, "email is undefined: ''")
    end
  end

  describe "#username" do
    it "returns the account's username" do
      expect(account.username).to eq("dhoy")
    end

    it "raises an error if username is missing" do
      expect { blank.username }.to raise_error(StandardError, "username is undefined: ''")
    end
  end
end