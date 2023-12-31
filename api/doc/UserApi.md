# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://petstore.swagger.io/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserApi.md#createuser) | **POST** /user | Create user
[**createUsersWithArrayInput**](UserApi.md#createuserswitharrayinput) | **POST** /user/createWithArray | Creates list of users with given input array
[**createUsersWithListInput**](UserApi.md#createuserswithlistinput) | **POST** /user/createWithList | Creates list of users with given input array
[**deleteUser**](UserApi.md#deleteuser) | **DELETE** /user/{username} | Delete user
[**getUserByName**](UserApi.md#getuserbyname) | **GET** /user/{username} | Get user by user name
[**loginUser**](UserApi.md#loginuser) | **GET** /user/login | Logs user into the system
[**logoutUser**](UserApi.md#logoutuser) | **GET** /user/logout | Logs out current logged in user session
[**updateUser**](UserApi.md#updateuser) | **PUT** /user/{username} | Updated user


# **createUser**
> createUser(body)

Create user

This can only be done by the logged in user.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final User body = ; // User | Created user object

try {
    api.createUser(body);
} catch on DioException (e) {
    print('Exception when calling UserApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**User**](User.md)| Created user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUsersWithArrayInput**
> createUsersWithArrayInput(body)

Creates list of users with given input array

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final BuiltList<User> body = ; // BuiltList<User> | List of user object

try {
    api.createUsersWithArrayInput(body);
} catch on DioException (e) {
    print('Exception when calling UserApi->createUsersWithArrayInput: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BuiltList&lt;User&gt;**](User.md)| List of user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUsersWithListInput**
> createUsersWithListInput(body)

Creates list of users with given input array

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final BuiltList<User> body = ; // BuiltList<User> | List of user object

try {
    api.createUsersWithListInput(body);
} catch on DioException (e) {
    print('Exception when calling UserApi->createUsersWithListInput: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BuiltList&lt;User&gt;**](User.md)| List of user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(username)

Delete user

This can only be done by the logged in user.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String username = username_example; // String | The name that needs to be deleted

try {
    api.deleteUser(username);
} catch on DioException (e) {
    print('Exception when calling UserApi->deleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The name that needs to be deleted | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserByName**
> User getUserByName(username)

Get user by user name

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String username = username_example; // String | The name that needs to be fetched. Use user1 for testing. 

try {
    final response = api.getUserByName(username);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->getUserByName: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The name that needs to be fetched. Use user1 for testing.  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUser**
> String loginUser(username, password)

Logs user into the system

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String username = username_example; // String | The user name for login
final String password = password_example; // String | The password for login in clear text

try {
    final response = api.loginUser(username, password);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->loginUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| The user name for login | 
 **password** | **String**| The password for login in clear text | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoutUser**
> logoutUser()

Logs out current logged in user session

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();

try {
    api.logoutUser();
} catch on DioException (e) {
    print('Exception when calling UserApi->logoutUser: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> updateUser(username, body)

Updated user

This can only be done by the logged in user.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUserApi();
final String username = username_example; // String | name that need to be updated
final User body = ; // User | Updated user object

try {
    api.updateUser(username, body);
} catch on DioException (e) {
    print('Exception when calling UserApi->updateUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| name that need to be updated | 
 **body** | [**User**](User.md)| Updated user object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

