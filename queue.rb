class JobQueue
  def initialize
    @jobs = []
    @mutex = Mutex.new
  end

  def add(job)
    @mutex.synchronize do
      puts "Adding Job ##{job.id}"
      @jobs << job
    end
  end

  def next_job
    @mutex.synchronize do
      @jobs.shift
    end
  end

  def size
    @mutex.synchronize do
      @jobs.length
    end
  end

  def empty?
    @mutex.synchronize do
      @jobs.empty?
    end
  end
end