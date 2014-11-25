require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BGG-AMP-SPP'
device :sphero, :driver => :sphero

work do
  every(3.seconds) do
    puts "Rolling..."
    sphero.roll 100, rand(360)
  end
end
