# Switch Database REST API Ruby client

SwaggerClient - the Ruby gem for the Switch Database REST API

Switch API is the primary endpoint of data sevices and Switch DB's platform. You can do adding, editing, deleting or listing data works to your database with query operations by using this low-level API based on HTTP.

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.2.1
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build swagger_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./swagger_client-1.0.0.gem
```
(for development, run `gem install --dev ./swagger_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'swagger_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO, then add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/YOUR_GIT_USERNAME/YOUR_GIT_REPO.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

## Documentation for API Endpoints

All URIs are relative to *http://tr02.switchapi.com/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AuthorizationApi* | [**token_get**](docs/AuthorizationApi.md#token_get) | **GET** /Token | Generate Access Token
*SwaggerClient::DBOperationsApi* | [**add_post**](docs/DBOperationsApi.md#add_post) | **POST** /Add | Add is used for adding a data object to the list created at Switch DB.
*SwaggerClient::DBOperationsApi* | [**list_post**](docs/DBOperationsApi.md#list_post) | **POST** /List | It's used for listing a data added before.
*SwaggerClient::DBOperationsApi* | [**set_delete**](docs/DBOperationsApi.md#set_delete) | **DELETE** /Set | It's used for deleting a data added before at Switch DB.
*SwaggerClient::DBOperationsApi* | [**set_post**](docs/DBOperationsApi.md#set_post) | **POST** /Set | It's used for updating a data object that is already added to Switch DB.


## Documentation for Models

 - [SwaggerClient::AddResponse](docs/AddResponse.md)
 - [SwaggerClient::Body](docs/Body.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::ListOrder](docs/ListOrder.md)
 - [SwaggerClient::SetResponse](docs/SetResponse.md)
 - [SwaggerClient::WhereItem](docs/WhereItem.md)


## Authors

* **[Mert Sarac](https://github.com/saracmert)** - *Initial work*