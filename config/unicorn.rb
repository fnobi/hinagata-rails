# set port number
listen 80

# set pid file path
pid File.expand_path('../../tmp/pids/unicorn.pid', __FILE__)

# set log file path
stderr_path File.expand_path('../../log/unicorn_stderr.log', __FILE__)
stdout_path File.expand_path('../../log/unicorn_stdout.log', __FILE__)
