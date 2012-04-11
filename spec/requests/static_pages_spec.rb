#encoding: UTF-8
require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
    it "应该包含 ‘这是我的主页面’这个关键字" do
      visit '/home'
      page.should have_selector('h1',text: '这是我的主页面')
    end

    it "title 需要是这个" do
      visit '/home'
      page.should have_content('这是我的主页面')
    end

    it "help 需要有这个" do
      visit '/help'
      page.should have_content('这是帮助页面')
    end
  end
end

