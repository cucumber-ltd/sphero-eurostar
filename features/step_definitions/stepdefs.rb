require 'square_lib'

class StubSphere
  attr_reader :rolls

  def initialize
    @rolls = [['time', 'direction', 'speed']]
  end

  def roll(speed, direction)
    @rolls << [$time.to_s, direction.to_s, speed.to_s]
  end
end

module ArtooApi
  def every(sec, &block)
    $time = 0
    loop do
      block.call()
      $time += sec
      break if $time >= @end_time
    end
  end
end
World(ArtooApi)

Given(/^the sphere is still$/) do
  @sphere = StubSphere.new
end

Given(/^we want to observe for (\d+) seconds$/) do |end_time|
  @end_time = end_time.to_i
end

When(/^we tell it to square$/) do
  do_work(@sphere)
end

Then(/^it should move as follows:$/) do |expected_moves|
  expected_moves.diff!(@sphere.rolls)
end
