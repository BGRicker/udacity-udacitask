class Item
  attr_accessor :category
  attr_reader :task, :complete

  def initialize(task)
    @task = task
    @complete = false
    @category = "default"
  end

  def complete
    @complete = true
  end

  def completed?
    @complete
  end

end
