# frozen_string_literal: true

require_relative 'json_service'
require_relative 'database_model'
require_relative 'data_converter_adapter'

database_model = DatabaseModel.new('<xml><attribute>value</attribute></xml>')

adapter = DataConverterAdapter.new(database_model)
adapter.convert_to_json
