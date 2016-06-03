require_relative '../nat_queue.feature'

Given(/^I have a queue$/) do
  $queue = NatQueue.new
end

When(/^I enqueue the item (\d+)$/) do |item|
  $queue.enqueue(item.to_i)
end

Then(/^the item (\d+) is present in the queue$/) do |item|
  elem = $queue.dequeue
  expect(item.to_i).to eq(elem), "Expected #{item} got #{elem}"
end
