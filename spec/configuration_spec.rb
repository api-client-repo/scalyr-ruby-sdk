=begin
#Scalyr API

#You can use the Scalyr API to send and retrieve log data directly from Scalyr servers, as well as manage configuration files. It is usually most convenient to use the Scalyr Agent to send log files, and to view logs on the web site.

OpenAPI spec version: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0-SNAPSHOT

=end

require 'spec_helper'

describe Scalyr::Configuration do
  let(:config) { Scalyr::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://www.scalyr.com/api")
    # Scalyr.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://www.scalyr.com/api")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://www.scalyr.com/api")
      end
    end
  end
end
