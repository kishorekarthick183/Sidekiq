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