# frozen_string_literal: true

require 'json'
require 'crack'
require 'byebug'
require_relative 'json_service'

class DataConverterAdapter
  def initialize(database_model)
    @database_model = database_model
  end

  def convert_to_json
    # doc = Nokogiri::XML(@database_model.xml_data)
    puts "--- Data Conversion --- \n\n"
    json_data = Crack::XML.parse(@database_model.xml_data).to_json
    json_service_obj ||= JSONService.instance
    json_service_obj.print_data_as_json(json_data)
  end
end
