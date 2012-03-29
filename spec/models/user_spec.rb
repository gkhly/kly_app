#encoding: utf-8
require 'spec_helper'

describe User do
 # pending "add some examples to (or delete) #{__FILE__}"
   before { @user = User.new( name: "张三", email: "zhangsan@abc.com" ) }
   subject { @user }
   it { should respond_to( :name ) }
   it { should respond_to( :email ) }
end
