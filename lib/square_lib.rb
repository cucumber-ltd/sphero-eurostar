require 'artoo'

def do_work(sphero)
  angle = 0
  every(3.seconds) do
    sphero.roll 30, angle
    angle = (angle + 90) % 360
  end
end
