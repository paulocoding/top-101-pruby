class Timer
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  
  def seconds
    @seconds
  end
  
  def seconds=(s)
    if s<3600
      if s<60
        @seconds = s
      else
        @minutes = s/60
        @seconds = s%60      
      end
    else
      @hours = s/3600
      s = s%3600
      if s<60
        @seconds = s
      else
        @minutes = s/60
        @seconds = s%60      
      end    
    end
  end
  
  def time_string
    s = ""
    if @hours < 10
        s+="0#{@hours}"
    else
        s+="#{@hours}"      
    end
    if @minutes < 10
        s+=":0#{@minutes}"
    else
        s+=":#{@minutes}"      
    end
    if @seconds < 10
        s+=":0#{@seconds}"
    else
        s+=":#{@seconds}"      
    end
    s
  end
end