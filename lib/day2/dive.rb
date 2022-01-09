

class Dive
    
    def getInput
        File.read("input.txt").split(/\n+/)
    end

    def run
        x=a=d=0;
        getInput.each do |line|
            case line 
            when /forward (\d+)/
                x += ($1).to_i
                d += a*($1).to_i
            when /up (\d+)/    
                a -= ($1).to_i        
            when /down (\d+)/    
                a += ($1).to_i
            end
        end
        x*d
    end

end


puts Dive.new.run