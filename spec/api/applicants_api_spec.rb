=begin
#Acqualify API Documentation

#The Acqualify API provides services to mortgage brokers and realtors to help applicants qualify for loans.

OpenAPI spec version: 1.0.0
Contact: info@creditsaint.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.18

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ApplicantsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApplicantsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ApplicantsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicantsApi' do
    it 'should create an instance of ApplicantsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ApplicantsApi)
    end
  end

  # unit tests for lookup_applicant
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
  describe 'lookup_applicant test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
