# frozen_string_literal: true

require_relative 'news_subscriber'

class NewsPublisher
  attr_reader :subscribers

  def initialize
    @subscribers = []
  end

  def add_subscriber(*subscriber)
    subscriber.each { |user| subscribers << user }
  end

  def remove_subscriber(subscriber)
    subscriber.notify('News Channel Unsubscribed.')
    subscribers.delete(subscriber)
  end

  def notify_subscribers(news_update)
    subscribers.each { |subscriber| subscriber.notify(news_update) }
  end

  def publish_news(news_update)
    puts ">> News Updated by admin: #{news_update}"
    notify_subscribers(news_update)
  end
end
