require 'set'

def findtwo(set, target)
  set.each do |n|
    candidate = (target-n)
    if (candidate != n && candidate > 0)
      if set.member?(candidate)
        ans = n * candidate
        #puts "*> #{n} * #{candidate} = #{ans}"
        return ans
      end
    end
  end
  return 0
end

def findthree(set, target)
  set.each do |n|
    newtarget = (target-n)
    if (newtarget > 0)
      res = findtwo(set, newtarget)
      if (res > 0)
        ans = n * res
        #puts "**> #{n} * #{res} = #{ans}"
        return ans
      end
    end
  end
end

@nums = Set[]
File.open("data.txt").each do |line|
  @nums << line.chomp.to_i
end

res = findtwo(@nums, 2020)
puts "--> #{res}"

res = findthree(@nums, 2020)
puts "---> #{res}"
