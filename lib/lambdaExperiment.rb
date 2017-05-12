is_cors = true;
CORS_RUN = "/etc/nagios/plugsin/test.rb"
instance = { "instance" => "owen" }

cors_cmd = lambda { |cmd| is_cors ? "#{instance['instance']} #{cmd}" : cmd }

puts "cors_cmd: " + cors_cmd.to_s
