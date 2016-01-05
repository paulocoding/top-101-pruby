class Book
  attr_accessor :title
  def initialize(s='')
    @title = titleize(s)
  end
  def title=(s)
    @title = titleize(s)
  end
    
  def titleize(s)
    a = s.split(" ")
    wi = 0
    a.each do |w|
      if w!="a" && w!="an" && w!="the" && w!="and" && w!="in" &&  w!="of" || wi == 0
        w.capitalize!
      end
      wi+=1 
    end
    a.join(" ")
  end
end

b = Book.new("hello?")
puts b.title
b.title = "Im another"
puts b.title