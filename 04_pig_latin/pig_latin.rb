def vowel?(l)
  f = l.downcase
  f == 'a'|| f == 'e' || f == 'i' || f == 'o' || f == 'u'
end

def translate(os)
  sa = os.split(" ")
  sr = []
  sa.each do |s|
    f = s[0]
    r = "" 
    if vowel?(f)
      r = s + 'ay'
    else
      i = 1
      until vowel?(s[i])
        i += 1
      end
      if s[i-1]=="q" && s[i]=="u"
        i -= 1
        r = s[i+2..s.length-1] + s[0..i+1] + 'ay'
      else
        i -= 1
        r = s[i+1..s.length-1] + s[0..i] + 'ay'
      end
    end
    sr.push r
  end
  sr.join(" ")
end
