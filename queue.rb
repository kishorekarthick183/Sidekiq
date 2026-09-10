class Queue
  attr_reader :jobs # expose jobs variable
  def initialize
    @jobs = []
  end

  def add(job)
    @jobs << job
  end

  def size
    @jobs.length
  end
end