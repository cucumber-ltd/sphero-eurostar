require 'artoo'
require_relative '../lib/square_lib'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BGG-AMP-SPP'
device :sphero, :driver => :sphero

work do
  do_work(sphero)
end
