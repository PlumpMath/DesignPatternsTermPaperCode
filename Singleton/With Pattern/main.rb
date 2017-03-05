require_relative 'device_manager'

def test_device
  device=DeviceManager.new
  101.times do
    device.write_data
  end
end

test_device
