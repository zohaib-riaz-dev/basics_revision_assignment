# frozen_string_literal: true

require_relative 'news_subscriber'
require_relative 'news_publisher'

publisher = NewsPublisher.new

subscriber1 = NewsSubscriber.new('TestUser')
subscriber2 = NewsSubscriber.new('Ertiza')
subscriber3 = NewsSubscriber.new('Zohaib')

publisher.add_subscriber(subscriber1, subscriber2, subscriber3)
# publisher.add_subscriber(subscriber1, subscriber2)

publisher.publish_news('Earth is round!')

publisher.remove_subscriber(subscriber1)
