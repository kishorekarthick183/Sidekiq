class Queue
  def initialize
    @jobs = []
  end

  def add(job)
    @jobs << job
  end

  def size
    @jobs.length
  end

  def each(&block)
    @jobs.each(&block)
  end

  def next_job
    @jobs.shift
  end
end