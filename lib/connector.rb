require "socket"

class Connector
  attr_reader :opts
  def initialize(opts={})
    @opts = defaults.merge(opts)
  end

  def defaults
    @defaults = {
      host_name: '192.168.1.113',
      port: 5250
    }
  end

  def connect(data)
    resp = []
    TCPSocket.open(@opts[:host_name], @opts[:port]) do |socket|
      socket.write data
      resp << socket.read(3)
      resp[0]
    end
  end
end
