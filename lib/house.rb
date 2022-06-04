class House
    def line(number)
        "This is #{number.downto(1).collect { |n| phrase(n) }.join("")}the house that Jack built.\n"
    end
    def recite()
        (1..12).map{|n| line(n)}.join("\n")
    end

    def phrase(number)
        phrases = [		
        "",	
		"the malt that lay in ",
		"the rat that ate ",
		"the cat that killed ",
		"the dog that worried ",
		"the cow with the crumpled horn that tossed ",
		"the maiden all forlorn that milked ",
		"the man all tattered and torn that kissed ",
		"the priest all shaven and shorn that married ",
		"the rooster that crowed in the morn that woke ",
		"the farmer sowing his corn that kept ",
		"the horse and the hound and the horn that belonged to "
	]
        case number
        when 12
            phrases[number - 1]
        when 11
            phrases[number - 1]
        when 10
            phrases[number - 1]
        when 9 
            phrases[number - 1]
        when 8
            phrases[number - 1]
        when 7
            phrases[number - 1]
        when 6
            phrases[number - 1]
        when 5
            phrases[number - 1]
        when 4
            phrases[number - 1]
        when 3
            phrases[number - 1]
        when 2
            phrases[number - 1]
        else
            phrases[number - 1]
        end
        
    end
end