# frozen_string_literal: true

require_relative 'news_publisher'

class NewsSubscriber
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def notify(news_update)
    puts "Hi #{name}! : received a notification: #{news_update}"
  end
end
