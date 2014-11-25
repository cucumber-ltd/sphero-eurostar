require 'artoo'

connection :sphero, :adaptor => :sphero, :port => '/dev/tty.Sphero-BGG-AMP-SPP'
device :sphero, :driver => :sphero

work do
  angle = 0
  every(3.seconds) do
    sphero.roll(50, angle)
    angle = (angle + 90) % 360
  end
end
