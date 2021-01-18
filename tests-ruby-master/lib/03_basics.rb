def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    return 'nil detected'
  elsif a > b && a > c
    return 'a is bigger'
  elsif b > c
    return 'b is bigger'
  else
    return 'c is bigger'
  end
end

def reverse_upcase_noLTA (strings)
  return strings.reverse.upcase.delete("LTA") 
end

def array_42 (ary)
  return ary.include?(42)
end
  
def magic_array (array)
  array.flatten!
  array.map!{|i| i = i*2}.sort!.uniq!
  array.delete_if {|i| i%3 == 0}
end