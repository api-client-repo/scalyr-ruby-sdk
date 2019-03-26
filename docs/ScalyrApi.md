# Scalyr::ScalyrApi

All URIs are relative to *https://www.scalyr.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_user_to_group**](ScalyrApi.md#add_user_to_group) | **POST** /addUsersToGroup | This method adds one or more users to a group.



## add_user_to_group

> UpdateUsers add_user_to_group(users_to_group_request)

This method adds one or more users to a group.

This method adds one or more users to a group.

### Example

```ruby
# load the gem
require 'scalyr'

api_instance = Scalyr::ScalyrApi.new
users_to_group_request = Scalyr::UsersToGroup.new # UsersToGroup | Users that need to be added to the group

begin
  #This method adds one or more users to a group.
  result = api_instance.add_user_to_group(users_to_group_request)
  p result
rescue Scalyr::ApiError => e
  puts "Exception when calling ScalyrApi->add_user_to_group: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **users_to_group_request** | [**UsersToGroup**](UsersToGroup.md)| Users that need to be added to the group | 

### Return type

[**UpdateUsers**](UpdateUsers.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

