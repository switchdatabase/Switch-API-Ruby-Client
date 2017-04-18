# SwaggerClient::AuthorizationApi

All URIs are relative to *http://tr02.switchapi.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**token_get**](AuthorizationApi.md#token_get) | **GET** /Token | Generate Access Token


# **token_get**
> String token_get(api_key, signature, expire)

Generate Access Token

For generating Access Token, you need API Key and API Secret parameters that are provided from the developer portal. At the request, API Key that will be sent by using header is generated as portal API Key and Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. At Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. 

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::AuthorizationApi.new

api_key = "api_key_example" # String | Your Switch API Key.

signature = "signature_example" # String | Signature parameter is generated as md5(APISecret + ExpireTimestamp) format.

expire = 789 # Integer | Expire parameter, token's expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information.


begin
  #Generate Access Token
  result = api_instance.token_get(api_key, signature, expire)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AuthorizationApi->token_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key** | **String**| Your Switch API Key. | 
 **signature** | **String**| Signature parameter is generated as md5(APISecret + ExpireTimestamp) format. | 
 **expire** | **Integer**| Expire parameter, token&#39;s expire date and time information must be proper to ISO 8601 standarts and Unix Time format with msec information. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



