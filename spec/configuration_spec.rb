=begin
#Switch Database REST API

#Switch API is the primary endpoint of data sevices and Switch DB's platform. You can do adding, editing, deleting or listing data works to your database with query operations by using this low-level API based on HTTP.

OpenAPI spec version: 1.2.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'

describe SwaggerClient::Configuration do
  let(:config) { SwaggerClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    #require 'URI'
    #uri = URI.parse("http://tr02.switchapi.com/")
    #SwaggerClient.configure do |c|
    #  c.host = uri.host
    #  c.base_path = uri.path
    #end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      #expect(config.base_url).to eq("http://tr02.switchapi.com/")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        #expect(config.base_url).to eq("http://tr02.switchapi.com/")
      end
    end
  end
end
