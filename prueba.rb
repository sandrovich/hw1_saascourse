def sum(n,t)
  (1..t/n).to_a.inject(&:+)
  puts (1..t/n)
end

#puts sum(5, 24)

def play(f)
  m=%w(Rock Paper Scissors);c=rand(3);u=m.index(f)||c-1;[m[c],%w(Draw Win Lose)[(u-c)%3]]*','
end

#puts play(0)

s = "Hello: I`m a l33t programmer!!"

print s.split(/[^a-zA-Z]/).reject{|e| e == "I" || e.empty?}
print "\n"
print s.split(/[^a-zA-Z]/).reject{|e| e == "I"}
print "\n"
print s.scan(/[a-zA-Z]/).reject{|e| e == "I" || e.empty?}
print "\n"
print s.split(/[^a-z^A-Z]/).reject{|e| e == "I"}
print "\n"