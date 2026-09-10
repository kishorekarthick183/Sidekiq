class Job
  def initialize(id, type, payload)
    @id = id
    @type = type
    @payload = payload
  end

  def display
    puts "job #{@id}"
    puts "type #{@type}"
    puts "salary #{@payload}"
  end 
end 

jobs = []

job1 = Job.new(1, "software engineering intern", 13_000)
job2 = Job.new(2, "frontend developer", 10_000)
jobs << job1
jobs << job2

jobs.each do |job|
  job.display
end