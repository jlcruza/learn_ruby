class Timer
  #write your code here
  
  def initialize()
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  # Seconds getter
  def seconds
    @seconds
  end

  # Seconds setter
  def seconds=(time)
    if(time > 60)
      @seconds = time%60
      self.minutes = time/60
    else
      @seconds = time
    end
  end

  # Minutes getter
  def minutes
    @minutes
  end

  # Minutes setter
  def minutes=(time)
    if(time > 60)
      @minutes = time%60
      self.hours = time/60
    else
      @minutes = time
    end
  end

  # Hours getter
  def hours
    @seconds
  end
  # Hours setter
  def hours=(time)
    @hours = time
  end

  
  def time_string
    format = ""

    if(@hours < 10)
      format += "0#{@hours}:"
    else
      format += "#{@hours}:"
    end

    if(@minutes < 10)
      format += "0#{@minutes}:"
    else
      format += "#{@minutes}:"
    end

    if(@seconds < 10)
      format += "0#{@seconds}"
    else
      format += "#{@seconds}"
    end

    return format

  end

end
