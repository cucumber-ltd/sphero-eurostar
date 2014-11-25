require 'square_lib'

class StubSphero
  attr_reader :commands

  def initialize
    @commands = [['time', 'distance', 'angle']]
  end

  def roll(distance, angle)
    @commands.push( [$time.to_s, distance.to_s, angle.to_s] )
  end
end

def every(sec, &block)
  block.call
  $time += 3
  block.call
  $time += 3
  block.call
  $time += 3
  block.call
  $time += 3
  block.call
end

Given(/^the time is (\d+)$/) do |time|
  $time = time.to_i
end

When(/^we start the square cycle$/) do
  @sphero = StubSphero.new
  do_work(@sphero)
end

Then(/^the following roll commands should be sent to the ball:$/) do |expected|
  expected.diff!(@sphero.commands)
end
