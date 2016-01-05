def echo(s)
  s
end

def shout(s)
  s.upcase
end

def repeat(s, t=2)
  r=""
  t.times {r+="#{s} "}
  r.chomp(" ")
end

def start_of_word(s, n)
  r=""
  n.times {|x| r += s[0+x]}
  r
end

def first_word(s)
  r = ""
  i = 0
  begin
    r += s[i]
    i += 1
  end while s[i] != " "
  r
end

def titleize(s)
  a = s.split(" ")
  wi = 0
  a.each do |w|
    if w!="a" && w!="the" && w!= "and" && w!= "over" || wi == 0
      w.capitalize!
    end
    wi+=1 
  end
  a.join(" ")
end