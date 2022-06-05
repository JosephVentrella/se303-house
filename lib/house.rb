class House

    @@phrases = [
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
    def line(number)
        "#{line_opening()}#{number.downto(1).collect { |i| phrase(i) }.join("")}the house that Jack built.\n"
    end

    def recite
        (1..12).map{|n| line(n)}.join("\n")
    end

    def line_opening()
        "This is "
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
    phrases[number - 1]     
    end
end

class HousePirate < House
    def line_opening
        "Thar be "
    end
end

class HouseRandom < House
end
        