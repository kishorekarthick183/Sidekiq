require_relative "job"
require_relative "queue"
require_relative "worker"

jobs = Queue.new

jobs.add(Job.new(1, "software engineering intern", 13_000))
jobs.add(Job.new(2, "frontend developer", 10_000))
jobs.add(Job.new(3, "backend developer", 13_000))

worker = Worker.new(jobs)

puts "\nbefore worker size #{jobs.size}"
worker.start
puts "\nafter worker size #{jobs.size}"
