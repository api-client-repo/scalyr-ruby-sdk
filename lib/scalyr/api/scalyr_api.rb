=begin
#Scalyr API

#You can use the Scalyr API to send and retrieve log data directly from Scalyr servers, as well as manage configuration files. It is usually most convenient to use the Scalyr Agent to send log files, and to view logs on the web site.

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'uri'

module Scalyr
  class ScalyrApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # This method adds one or more users to a group.
    # This method adds one or more users to a group.
    # @param users_to_group_request [UsersToGroup] Users that need to be added to the group
    # @param [Hash] opts the optional parameters
    # @return [UpdateUsers]
    def add_user_to_group(users_to_group_request, opts = {})
      data, _status_code, _headers = add_user_to_group_with_http_info(users_to_group_request, opts)
      data
    end

    # This method adds one or more users to a group.
    # This method adds one or more users to a group.
    # @param users_to_group_request [UsersToGroup] Users that need to be added to the group
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateUsers, Integer, Hash)>] UpdateUsers data, response status code and response headers
    def add_user_to_group_with_http_info(users_to_group_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ScalyrApi.add_user_to_group ...'
      end
      # verify the required parameter 'users_to_group_request' is set
      if @api_client.config.client_side_validation && users_to_group_request.nil?
        fail ArgumentError, "Missing the required parameter 'users_to_group_request' when calling ScalyrApi.add_user_to_group"
      end
      # resource path
      local_var_path = '/addUsersToGroup'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(users_to_group_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateUsers')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ScalyrApi#add_user_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end