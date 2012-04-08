#encoding: utf-8
require 'spec_helper'

describe User do
 # pending "add some examples to (or delete) #{__FILE__}"
   before { @user = User.new( name: "张三", email: "zhangsan@abc.com" ) }
   subject { @user }
   it { should respond_to( :name ) }
   it { should respond_to( :email ) }
   it { should be_valid }

   describe "当name为空的时候" do
     before { @user.name = " " }
     it { should_not be_valid }
   end

   describe "当email为空的时候" do
    before { @user.email = " " }
    it { should_not be_valid }
  end

  describe "当name的长度太长的时候" do
    before {@user.name = "a" * 51 }
    it  { should_not be_valid }
  end

  describe "当email格式不正确的时候" do
    invalid_addresses = %w[ ddd.dfd.com ddd@ddsfd. trtr fdfeee@foo ]
    invalid_addresses.each do | invalid_address |
      before { @user.email = invalid_address }
      it { should_not be_valid }
    end
  end

    describe "当email格式正确的时候" do
      valid_addresses = %w[ abc@sss.com dfd.eedf@ddd.org.cn rrrrd@dfdf.info ]
      valid_addresses.each do | valid_address |
      before { @user.email = valid_address }
      it { should be_valid }
    end

    describe "当email重复的时候" do
      before do
         user_with_duplicate_email = @user.dup
         user_with_duplicate_email.email = @user.email.upcase
         user_with_duplicate_email.save
      end
      it { should_not be_valid }
    end

  end
  
end

