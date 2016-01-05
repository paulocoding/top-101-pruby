def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(ar)
  r = 0
  ar.each { |n| r+=n }
  r
end

def multiply(ar)
  r=1
  ar.each { |n| r*=n}
  r
end

def power(n,e)
  r = 1
  e.times { r*=n }
  r
end

def fact(n)
  r = 1
  currentN = n
  n.times do
      r *= currentN
      currentN -= 1 
    end
  r
end
