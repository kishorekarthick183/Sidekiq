class Worker
  def initialize(queue)
    @queue = queue
  end
  def start
    puts "work started"
    loop do
      job = @queue.next_job
      if job
        job.display
      else
        puts "no jobs available"
        break
      end
    end
  end
end
