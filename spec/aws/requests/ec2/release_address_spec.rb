require File.dirname(__FILE__) + '/../../spec_helper'

describe 'EC2.release_address' do

  before(:all) do
    @public_ip = ec2.allocate_address.body['publicIp']
  end

  it "should return proper attributes" do
    actual = ec2.release_address(@public_ip)
    actual.body['requestId'].should be_a(String)
    actual.body['return'].should == true
  end

end