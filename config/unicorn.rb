# set port number
listen File.expand_path('../../tmp/sockets/unicorn.sock', __FILE__)

# set pid file path
pid File.expand_path('../../tmp/pids/unicorn.pid', __FILE__)

# set log file path
stderr_path File.expand_path('../../log/unicorn_stderr.log', __FILE__)
stdout_path File.expand_path('../../log/unicorn_stdout.log', __FILE__)
