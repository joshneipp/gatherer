class Project

  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def done?
    #reject all completed tasks in the array, and call .empty? on the resulting array
    tasks.reject(&:complete?).empty?
  end

  def total_size
    tasks.sum(&:size)
  end

  def remaining_size
    #reject all completed tasks in the array, and sum the size of the remaining tasks
    tasks.reject(&:complete?).sum(&:size)
  end
end
