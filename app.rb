require_relative "job"
require_relative "queue"
require_relative "worker"

jobs = Queue.new

workers = []

3.times do |i|
  worker = Worker.new(jobs)

  thread = Thread.new do
    puts "Starting Worker #{i + 1}"
    worker.start
  end

  workers << thread
end

sleep 1

10.times do |i|
  jobs.add(
    Job.new(
      i + 1,
      "job type #{i + 1}",
      (i + 1) * 1000
    )
  )
end

sleep 10

workers.each do |thread|
  thread.kill
end