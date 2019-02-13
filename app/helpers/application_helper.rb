module ApplicationHelper

def full_age(age)
  ages = age.downto(4) { |i| print i, " " }
  puts ages
end

end


