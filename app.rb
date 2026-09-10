require_relative "job"

jobs = []

job1 = Job.new(1, "software engineering intern", 13_000)
job2 = Job.new(2, "frontend developer", 10_000)
jobs << job1
jobs << job2

jobs.each do |job|
  job.display
  puts(" ")
end