=begin
#Switch Database REST API

#Switch API is the primary endpoint of data sevices and Switch DB's platform. You can do adding, editing, deleting or listing data works to your database with query operations by using this low-level API based on HTTP.

OpenAPI spec version: 1.2.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::DBOperationsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DBOperationsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::DBOperationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DBOperationsApi' do
    it 'should create an instact of DBOperationsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::DBOperationsApi)
    end
  end

  # unit tests for add_post
  # Add is used for adding a data object to the list created at Switch DB.
  # You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It&#39;s equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 
  # @param api_key Your Switch API Key.
  # @param access_token Your Access Token.
  # @param list Your data list name.
  # @param body Your new value JSON.
  # @param [Hash] opts the optional parameters
  # @return [AddResponse]
  describe 'add_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_post
  # It&#39;s used for listing a data added before.
  # List parameter sent remarks the list that will be do listing work on at Header. It&#39;s equal to SELECT query at relational databases. 
  # @param api_key Your Switch API Key.
  # @param access_token Your Access Token.
  # @param list Your data list name.
  # @param body Your Switch DB Query.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'list_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_delete
  # It&#39;s used for deleting a data added before at Switch DB.
  # List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It&#39;s equal to DELETE query at relational databases. 
  # @param api_key Your Switch API Key.
  # @param access_token Your Access Token.
  # @param list Your data list name.
  # @param list_item_id Your list item id.
  # @param [Hash] opts the optional parameters
  # @return [SetResponse]
  describe 'set_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_post
  # It&#39;s used for updating a data object that is already added to Switch DB.
  # In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \&quot;List\&quot;, \&quot;ListItemId\&quot;, respectively, as shown in the example below. It&#39;s equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 
  # @param api_key Your Switch API Key.
  # @param access_token Your Access Token.
  # @param list Your data list name.
  # @param list_item_id Your list item id.
  # @param body Your new value JSON.
  # @param [Hash] opts the optional parameters
  # @return [SetResponse]
  describe 'set_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
