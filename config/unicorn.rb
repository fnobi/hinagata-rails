RAILS_ROOT = '../..'

# set port number
listen File.expand_path("#{RAILS_ROOT}/tmp/sockets/unicorn.sock", __FILE__)

# set pid file path
pid File.expand_path("#{RAILS_ROOT}/tmp/pids/unicorn.pid", __FILE__)

# set log file path
stderr_path File.expand_path("#{RAILS_ROOT}/log/unicorn_stderr.log", __FILE__)
stdout_path File.expand_path("#{RAILS_ROOT}/log/unicorn_stdout.log", __FILE__)

# SEE
# http://d.hatena.ne.jp/milk1000cc/20100804/1280893810
before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

  old_pid = "#{ server.config[:pid] }.oldbin"
  unless old_pid == server.pid
    begin
      Process.kill :QUIT, File.read(old_pid).to_i
    rescue Errno::ENOENT, Errno::ESRCH

    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
