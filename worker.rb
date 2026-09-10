class Worker
  def initialize(queue)
    @queue = queue
  end

  def start
    puts ""
    puts "work started"

    loop do
      if @queue.empty?
        puts "No jobs. Worker is waiting..."
        sleep 2
        next
      end

      job = @queue.next_job
      if job
        puts "Worker picked Job ##{job.id}"
        job.display
        puts "Processing..."
        sleep 1
      end
    end
  end
end
