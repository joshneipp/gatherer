class Project
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def done?
    #reject all :complete? tasks in the array, and call .empty? on the resulting array
    tasks.reject(&:complete?).empty?
  end

end
