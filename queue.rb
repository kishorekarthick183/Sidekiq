class Queue
  def initialize
    @jobs = []
  end

  def add(job)
    puts ""
    puts "Adding Job ##{job.id}"
    @jobs << job
  end

  def size
    @jobs.length
  end

  def next_job
    @jobs.shift
  end

  def empty?
    @jobs.empty?
  end
end