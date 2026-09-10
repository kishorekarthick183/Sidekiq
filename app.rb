require_relative "job"
require_relative "queue"

jobs = Queue.new

jobs.add(Job.new(1, "software engineering intern", 13_000))
jobs.add(Job.new(2, "frontend developer", 10_000))
jobs.add(Job.new(3, "backend developer", 13_000))

job = jobs.next_job
puts "\nprocessing first job role:"
job.display

puts " "

puts "remaining jobs: #{jobs.size}"

jobs.each do |job|
  job.display
  puts(" ")
end