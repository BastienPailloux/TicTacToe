class CheckerService
  def initialize(box)
    @box = box
  end

  def checker
    if @box.state == " "
      return "Empty"
    else
      return @box.state
    end
  end
end
