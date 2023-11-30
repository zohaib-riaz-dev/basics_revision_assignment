# frozen_string_literal: true

class DatabaseModel
  attr_accessor :xml_data

  def initialize(xml_data)
    @xml_data = xml_data
    puts ">> XML data : #{@xml_data} \n\n"
  end
end
