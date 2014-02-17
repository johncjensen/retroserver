require "retroserver/version"
require "socket"

module Retroserver

  server = TCPServer.new 1998
  loop do
    client = server.accept
    request = client.gets
    verb, path, header = request.split(' ')
    path = File.join('public', path)
    path = File.join(path, 'index.html') if File.directory?(path)
    client.puts "HTTP/1.1 200 OK"
    client.puts "Content-Type: text/html"
    client.puts "Connection: close"
    client.puts

    File.open(path, 'r') do |file|
      client.puts file.read
    end
    client.close
  end

end
