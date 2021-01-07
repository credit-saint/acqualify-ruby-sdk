=begin
#Acqualify API Documentation

#The Acqualify API provides services to mortgage brokers and realtors to help applicants qualify for loans.

OpenAPI spec version: 1.0.0
Contact: info@creditsaint.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.18

=end

require 'uri'

module SwaggerClient
  class ApplicantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns public information about a loan applicant
    # See publicly available financial info about a loan applicant including credit score, based on name, address and date of birth
    # @param first_name Applicant first name
    # @param last_name Applicant last name
    # @param addr_line1 Address line 1
    # @param city City
    # @param state State (2-letter abbreviation)
    # @param zip Zip code
    # @param dob Date of birth (MM/DD/YYYY)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr_line2 Address line 2
    # @option opts [String] :email Applicant email address
    # @option opts [String] :phone_number Phone number
    # @option opts [String] :loan_amount Loan amount
    # @return [nil]
    def lookup_applicant(first_name, last_name, addr_line1, city, state, zip, dob, opts = {})
      lookup_applicant_with_http_info(first_name, last_name, addr_line1, city, state, zip, dob, opts)
      nil
    end

    # Returns public information about a loan applicant
    # See publicly available financial info about a loan applicant including credit score, based on name, address and date of birth
    # @param first_name Applicant first name
    # @param last_name Applicant last name
    # @param addr_line1 Address line 1
    # @param city City
    # @param state State (2-letter abbreviation)
    # @param zip Zip code
    # @param dob Date of birth (MM/DD/YYYY)
    # @param [Hash] opts the optional parameters
    # @option opts [String] :addr_line2 Address line 2
    # @option opts [String] :email Applicant email address
    # @option opts [String] :phone_number Phone number
    # @option opts [String] :loan_amount Loan amount
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def lookup_applicant_with_http_info(first_name, last_name, addr_line1, city, state, zip, dob, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.lookup_applicant ...'
      end
      # verify the required parameter 'first_name' is set
      if @api_client.config.client_side_validation && first_name.nil?
        fail ArgumentError, "Missing the required parameter 'first_name' when calling ApplicantsApi.lookup_applicant"
      end
      # verify the required parameter 'last_name' is set
      if @api_client.config.client_side_validation && last_name.nil?
        fail ArgumentError, "Missing the required parameter 'last_name' when calling ApplicantsApi.lookup_applicant"
      end
      # verify the required parameter 'addr_line1' is set
      if @api_client.config.client_side_validation && addr_line1.nil?
        fail ArgumentError, "Missing the required parameter 'addr_line1' when calling ApplicantsApi.lookup_applicant"
      end
      # verify the required parameter 'city' is set
      if @api_client.config.client_side_validation && city.nil?
        fail ArgumentError, "Missing the required parameter 'city' when calling ApplicantsApi.lookup_applicant"
      end
      # verify the required parameter 'state' is set
      if @api_client.config.client_side_validation && state.nil?
        fail ArgumentError, "Missing the required parameter 'state' when calling ApplicantsApi.lookup_applicant"
      end
      # verify the required parameter 'zip' is set
      if @api_client.config.client_side_validation && zip.nil?
        fail ArgumentError, "Missing the required parameter 'zip' when calling ApplicantsApi.lookup_applicant"
      end
      # verify the required parameter 'dob' is set
      if @api_client.config.client_side_validation && dob.nil?
        fail ArgumentError, "Missing the required parameter 'dob' when calling ApplicantsApi.lookup_applicant"
      end
      # resource path
      local_var_path = '/lookup-applicant'

      # query parameters
      query_params = {}
      query_params[:'firstName'] = first_name
      query_params[:'lastName'] = last_name
      query_params[:'addrLine1'] = addr_line1
      query_params[:'city'] = city
      query_params[:'state'] = state
      query_params[:'zip'] = zip
      query_params[:'dob'] = dob
      query_params[:'addrLine2'] = opts[:'addr_line2'] if !opts[:'addr_line2'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'phoneNumber'] = opts[:'phone_number'] if !opts[:'phone_number'].nil?
      query_params[:'loanAmount'] = opts[:'loan_amount'] if !opts[:'loan_amount'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/xml', 'application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['bearer_token']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#lookup_applicant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end