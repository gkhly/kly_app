#encoding: UTF-8
require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
    it "应该包含 ‘主页’这个关键字" do
      visit '/static_pages/home'
      page.should have_content('主页')
    end

  end
end

