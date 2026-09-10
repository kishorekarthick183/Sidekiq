require_relative "job"
require_relative "queue"

jobs = Queue.new

jobs.add(Job.new(1, "software engineering intern", 13_000))
jobs.add(Job.new(2, "frontend developer", 10_000))

puts("job of size: #{jobs.size}")

jobs.jobs.each do |job|
  job.display
  puts(" ")
end