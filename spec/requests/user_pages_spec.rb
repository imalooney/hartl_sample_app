require 'spec_helper'

describe "UserPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }

  describe "signup page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title("#{base_title} | Sign up") }
  end

  describe "profile page" do
    before { visit user_path(user) }

    it { should have_content(user.name) }
    it { should have_title(user.name) }
  end
end
