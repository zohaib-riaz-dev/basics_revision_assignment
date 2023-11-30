# frozen_string_literal: true

class JSONService
  @instance = nil

  private_class_method :new

  def self.instance
    @instance ||= new
  end

  def print_data_as_json(data)
    puts ">> JSON data: #{data}"
  end
end
