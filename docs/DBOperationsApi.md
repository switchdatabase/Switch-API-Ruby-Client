# SwaggerClient::DBOperationsApi

All URIs are relative to *http://tr02.switchapi.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_post**](DBOperationsApi.md#add_post) | **POST** /Add | Add is used for adding a data object to the list created at Switch DB.
[**list_post**](DBOperationsApi.md#list_post) | **POST** /List | It&#39;s used for listing a data added before.
[**set_delete**](DBOperationsApi.md#set_delete) | **DELETE** /Set | It&#39;s used for deleting a data added before at Switch DB.
[**set_post**](DBOperationsApi.md#set_post) | **POST** /Set | It&#39;s used for updating a data object that is already added to Switch DB.


# **add_post**
> AddResponse add_post(api_key, access_token, list, body)

Add is used for adding a data object to the list created at Switch DB.

You can choose the list that will be added tha data set to with List parameter that will be sent to Header. It's equal to INSERT query at the relational databases model. The data set that will be added to the database is transmited at request body. For versions upper than v1.2.1, if the data sent is an array, all items in the array are added one by one, so they are added as a whole. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DBOperationsApi.new

api_key = "api_key_example" # String | Your Switch API Key.

access_token = "access_token_example" # String | Your Access Token.

list = "list_example" # String | Your data list name.

body = "body_example" # String | Your new value JSON.


begin
  #Add is used for adding a data object to the list created at Switch DB.
  result = api_instance.add_post(api_key, access_token, list, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DBOperationsApi->add_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| Your Switch API Key. | 
 **access_token** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **body** | **String**| Your new value JSON. | 

### Return type

[**AddResponse**](AddResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_post**
> list_post(api_key, access_token, list, body)

It's used for listing a data added before.

List parameter sent remarks the list that will be do listing work on at Header. It's equal to SELECT query at relational databases. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DBOperationsApi.new

api_key = "api_key_example" # String | Your Switch API Key.

access_token = "access_token_example" # String | Your Access Token.

list = "list_example" # String | Your data list name.

body = SwaggerClient::Body.new # Body | Your Switch DB Query.


begin
  #It's used for listing a data added before.
  api_instance.list_post(api_key, access_token, list, body)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DBOperationsApi->list_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| Your Switch API Key. | 
 **access_token** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **body** | [**Body**](Body.md)| Your Switch DB Query. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_delete**
> SetResponse set_delete(api_key, access_token, list, list_item_id)

It's used for deleting a data added before at Switch DB.

List parameter sent remarks the list that will be deleted data from at Header and ListItemId parameter remarks the ID consisted by Switch DB for the data that will be deleted. It's equal to DELETE query at relational databases. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DBOperationsApi.new

api_key = "api_key_example" # String | Your Switch API Key.

access_token = "access_token_example" # String | Your Access Token.

list = "list_example" # String | Your data list name.

list_item_id = "list_item_id_example" # String | Your list item id.


begin
  #It's used for deleting a data added before at Switch DB.
  result = api_instance.set_delete(api_key, access_token, list, list_item_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DBOperationsApi->set_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| Your Switch API Key. | 
 **access_token** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **list_item_id** | **String**| Your list item id. | 

### Return type

[**SetResponse**](SetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **set_post**
> SetResponse set_post(api_key, access_token, list, list_item_id, body)

It's used for updating a data object that is already added to Switch DB.

In order to UPDATE a object, Listname and ListItemId parameters should be sent in the Header of the REQUEST as \"List\", \"ListItemId\", respectively, as shown in the example below. It's equal to UPDATE query at relational databases. The data set that will be edited is transmited to the database at request body. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DBOperationsApi.new

api_key = "api_key_example" # String | Your Switch API Key.

access_token = "access_token_example" # String | Your Access Token.

list = "list_example" # String | Your data list name.

list_item_id = "list_item_id_example" # String | Your list item id.

body = "body_example" # String | Your new value JSON.


begin
  #It's used for updating a data object that is already added to Switch DB.
  result = api_instance.set_post(api_key, access_token, list, list_item_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DBOperationsApi->set_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| Your Switch API Key. | 
 **access_token** | **String**| Your Access Token. | 
 **list** | **String**| Your data list name. | 
 **list_item_id** | **String**| Your list item id. | 
 **body** | **String**| Your new value JSON. | 

### Return type

[**SetResponse**](SetResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



