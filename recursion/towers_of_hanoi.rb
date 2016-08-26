# Rules
# 1. 3 stacks move from left to right in 3 columns
# 2. larger stacks cannot be on top of smaller
# 3. Can only move 1 disk at a time

class TowersOfHanoi
  def move(disks, from, to, inter)
    if disks == 1
      puts "Moving disc 1 from #{from} to #{to}"
      return
    else
      move(disks - 1, from, inter, to)
      puts "Moving disc #{disks} from #{from} to #{to}"
      move(disks - 1, inter, to, from)
    end
  end
end

puts '==== 3 Disks ===='
TowersOfHanoi.new.move(3, 'A', 'C', 'B')
puts '==== 6 Disks ===='
TowersOfHanoi.new.move(6, 'A', 'C', 'B')
