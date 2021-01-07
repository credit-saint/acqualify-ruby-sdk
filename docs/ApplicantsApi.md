# SwaggerClient::ApplicantsApi

All URIs are relative to *https://localhost/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lookup_applicant**](ApplicantsApi.md#lookup_applicant) | **GET** /lookup-applicant | Returns public information about a loan applicant


# **lookup_applicant**
> lookup_applicant(first_name, last_name, addr_line1, city, state, zip, dob, opts)

Returns public information about a loan applicant

See publicly available financial info about a loan applicant including credit score, based on name, address and date of birth

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: bearer_token
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SwaggerClient::ApplicantsApi.new

first_name = 'first_name_example' # String | Applicant first name

last_name = 'last_name_example' # String | Applicant last name

addr_line1 = 'addr_line1_example' # String | Address line 1

city = 'city_example' # String | City

state = 'state_example' # String | State (2-letter abbreviation)

zip = 789 # Integer | Zip code

dob = 'dob_example' # String | Date of birth (MM/DD/YYYY)

opts = { 
  addr_line2: 'addr_line2_example', # String | Address line 2
  email: 'email_example', # String | Applicant email address
  phone_number: 'phone_number_example', # String | Phone number
  loan_amount: 'loan_amount_example' # String | Loan amount
}

begin
  #Returns public information about a loan applicant
  api_instance.lookup_applicant(first_name, last_name, addr_line1, city, state, zip, dob, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ApplicantsApi->lookup_applicant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **first_name** | **String**| Applicant first name | 
 **last_name** | **String**| Applicant last name | 
 **addr_line1** | **String**| Address line 1 | 
 **city** | **String**| City | 
 **state** | **String**| State (2-letter abbreviation) | 
 **zip** | **Integer**| Zip code | 
 **dob** | **String**| Date of birth (MM/DD/YYYY) | 
 **addr_line2** | **String**| Address line 2 | [optional] 
 **email** | **String**| Applicant email address | [optional] 
 **phone_number** | **String**| Phone number | [optional] 
 **loan_amount** | **String**| Loan amount | [optional] 

### Return type

nil (empty response body)

### Authorization

[bearer_token](../README.md#bearer_token)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json



