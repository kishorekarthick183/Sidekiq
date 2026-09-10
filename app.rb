require_relative "job"
require_relative "queue"
require_relative "worker"

jobs = Queue.new

worker_thread = Thread.new do
  worker = Worker.new(jobs)
  worker.start
end

sleep 1

jobs.add(Job.new(1, "software engineering intern", 13_000))

sleep 2

jobs.add(Job.new(2, "frontend developer", 10_000))

sleep 2

jobs.add(Job.new(3, "backend developer", 13_000))

sleep 5
worker_thread.kill