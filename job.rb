class Job
  attr_reader :id, :type, :payload
  def initialize(id, type, payload)
    @id = id
    @type = type
    @payload = payload
  end

  def display
    puts "job #{@id}"
    puts "type #{@type}"
    puts "salary #{@payload}"
    puts ""
  end 
end 