require "socket"

class Connector
  attr_reader :opts
  def initialize(opts={})
    @opts = defaults.merge(opts)
    @socket = TCPSocket::open(@opts[:host_name], @opts[:port])
  end

  def defaults
    @defaults = {
      host_name: '127.0.0.1',
      port: 80
    }
  end

  def connect(data)
  end
end
