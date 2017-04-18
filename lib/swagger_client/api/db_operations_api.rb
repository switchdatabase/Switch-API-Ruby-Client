=begin
#Switch Database REST API

#Switch API is the primary endpoint of data sevices and Switch DB's platform. You can do adding, editing, deleting or listing data works to your database with query operations by using this low-level API based on HTTP.

OpenAPI spec version: 1.2.1

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class DBOperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add is used for adding a data object to the list created at Switch DB.
    # You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It's equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param body Your new value JSON.
    # @param [Hash] opts the optional parameters
    # @return [AddResponse]
    def add_post(api_key, access_token, list, body, opts = {})
      data, _status_code, _headers = add_post_with_http_info(api_key, access_token, list, body, opts)
      return data
    end

    # Add is used for adding a data object to the list created at Switch DB.
    # You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It&#39;s equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param body Your new value JSON.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddResponse, Fixnum, Hash)>] AddResponse data, response status code and response headers
    def add_post_with_http_info(api_key, access_token, list, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DBOperationsApi.add_post ..."
      end
      # verify the required parameter 'api_key' is set
      fail ArgumentError, "Missing the required parameter 'api_key' when calling DBOperationsApi.add_post" if api_key.nil?
      # verify the required parameter 'access_token' is set
      fail ArgumentError, "Missing the required parameter 'access_token' when calling DBOperationsApi.add_post" if access_token.nil?
      # verify the required parameter 'list' is set
      fail ArgumentError, "Missing the required parameter 'list' when calling DBOperationsApi.add_post" if list.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling DBOperationsApi.add_post" if body.nil?
      # resource path
      local_var_path = "/Add".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'APIKey'] = api_key
      header_params[:'AccessToken'] = access_token
      header_params[:'List'] = list

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AddResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DBOperationsApi#add_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # It's used for listing a data added before.
    # List parameter sent remarks the list that will be do listing work on at Header. It's equal to SELECT query at relational databases. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param body Your Switch DB Query.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def list_post(api_key, access_token, list, body, opts = {})
      list_post_with_http_info(api_key, access_token, list, body, opts)
      return nil
    end

    # It&#39;s used for listing a data added before.
    # List parameter sent remarks the list that will be do listing work on at Header. It&#39;s equal to SELECT query at relational databases. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param body Your Switch DB Query.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def list_post_with_http_info(api_key, access_token, list, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DBOperationsApi.list_post ..."
      end
      # verify the required parameter 'api_key' is set
      fail ArgumentError, "Missing the required parameter 'api_key' when calling DBOperationsApi.list_post" if api_key.nil?
      # verify the required parameter 'access_token' is set
      fail ArgumentError, "Missing the required parameter 'access_token' when calling DBOperationsApi.list_post" if access_token.nil?
      # verify the required parameter 'list' is set
      fail ArgumentError, "Missing the required parameter 'list' when calling DBOperationsApi.list_post" if list.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling DBOperationsApi.list_post" if body.nil?
      # resource path
      local_var_path = "/List".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'APIKey'] = api_key
      header_params[:'AccessToken'] = access_token
      header_params[:'List'] = list

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DBOperationsApi#list_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # It's used for deleting a data added before at Switch DB.
    # List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It's equal to DELETE query at relational databases. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param list_item_id Your list item id.
    # @param [Hash] opts the optional parameters
    # @return [SetResponse]
    def set_delete(api_key, access_token, list, list_item_id, opts = {})
      data, _status_code, _headers = set_delete_with_http_info(api_key, access_token, list, list_item_id, opts)
      return data
    end

    # It&#39;s used for deleting a data added before at Switch DB.
    # List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It&#39;s equal to DELETE query at relational databases. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param list_item_id Your list item id.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetResponse, Fixnum, Hash)>] SetResponse data, response status code and response headers
    def set_delete_with_http_info(api_key, access_token, list, list_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DBOperationsApi.set_delete ..."
      end
      # verify the required parameter 'api_key' is set
      fail ArgumentError, "Missing the required parameter 'api_key' when calling DBOperationsApi.set_delete" if api_key.nil?
      # verify the required parameter 'access_token' is set
      fail ArgumentError, "Missing the required parameter 'access_token' when calling DBOperationsApi.set_delete" if access_token.nil?
      # verify the required parameter 'list' is set
      fail ArgumentError, "Missing the required parameter 'list' when calling DBOperationsApi.set_delete" if list.nil?
      # verify the required parameter 'list_item_id' is set
      fail ArgumentError, "Missing the required parameter 'list_item_id' when calling DBOperationsApi.set_delete" if list_item_id.nil?
      # resource path
      local_var_path = "/Set".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'APIKey'] = api_key
      header_params[:'AccessToken'] = access_token
      header_params[:'List'] = list
      header_params[:'ListItemId'] = list_item_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DBOperationsApi#set_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # It's used for updating a data object that is already added to Switch DB.
    # In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \"List\", \"ListItemId\", respectively, as shown in the example below. It's equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param list_item_id Your list item id.
    # @param body Your new value JSON.
    # @param [Hash] opts the optional parameters
    # @return [SetResponse]
    def set_post(api_key, access_token, list, list_item_id, body, opts = {})
      data, _status_code, _headers = set_post_with_http_info(api_key, access_token, list, list_item_id, body, opts)
      return data
    end

    # It&#39;s used for updating a data object that is already added to Switch DB.
    # In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \&quot;List\&quot;, \&quot;ListItemId\&quot;, respectively, as shown in the example below. It&#39;s equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 
    # @param api_key Your Switch API Key.
    # @param access_token Your Access Token.
    # @param list Your data list name.
    # @param list_item_id Your list item id.
    # @param body Your new value JSON.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetResponse, Fixnum, Hash)>] SetResponse data, response status code and response headers
    def set_post_with_http_info(api_key, access_token, list, list_item_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DBOperationsApi.set_post ..."
      end
      # verify the required parameter 'api_key' is set
      fail ArgumentError, "Missing the required parameter 'api_key' when calling DBOperationsApi.set_post" if api_key.nil?
      # verify the required parameter 'access_token' is set
      fail ArgumentError, "Missing the required parameter 'access_token' when calling DBOperationsApi.set_post" if access_token.nil?
      # verify the required parameter 'list' is set
      fail ArgumentError, "Missing the required parameter 'list' when calling DBOperationsApi.set_post" if list.nil?
      # verify the required parameter 'list_item_id' is set
      fail ArgumentError, "Missing the required parameter 'list_item_id' when calling DBOperationsApi.set_post" if list_item_id.nil?
      # verify the required parameter 'body' is set
      fail ArgumentError, "Missing the required parameter 'body' when calling DBOperationsApi.set_post" if body.nil?
      # resource path
      local_var_path = "/Set".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'APIKey'] = api_key
      header_params[:'AccessToken'] = access_token
      header_params[:'List'] = list
      header_params[:'ListItemId'] = list_item_id

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SetResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DBOperationsApi#set_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end