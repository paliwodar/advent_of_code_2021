

class Sonar
    
    def sweep
        result = 0
        last3 = [(2**(0.size * 8 -2) -1)] * 3
        File.read("input.txt").split(/\n+/).each do |l|
            prev_sum = last3.sum
            last3.shift
            last3 << l.to_i
            current_sum = last3.sum
            
            if prev_sum < prev_sum
                result += 1
            end
        end
        result
    end

end


puts Sonar.new.sweep