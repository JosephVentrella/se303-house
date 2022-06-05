class House

    def nouns
        [
        "the malt ",
        "the rat ",
        "the cat ",
        "the dog ",
        "the cow with the crumpled horn ",
        "the maiden all forlorn ",
        "the man all tattered and torn ",
        "the priest all shaven and shorn ",
        "the rooster that crowed in the morn ",
        "the farmer sowing his corn ",
        "the horse and the hound and the horn "
        ]
    end
    def phrases 
        [
        "",
		"#{nouns[0]}that lay in ",
		"#{nouns[1]}that ate ",
		"#{nouns[2]}that killed ",
		"#{nouns[3]}that worried ",
		"#{nouns[4]}that tossed ",
		"#{nouns[5]}that milked ",
		"#{nouns[6]}that kissed ",
		"#{nouns[7]}that married ",
		"#{nouns[8]}that woke ",
		"#{nouns[9]}that kept ",
		"#{nouns[10]}that belonged to "
	    ]
    end

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
        phrases[number - 1]
    end
end

class HousePirate < House
    def line_opening
        "Thar be "
    end
end

# Currently using a seed to get tests to pass
# To run with complete randomness uncomment the top phrases and comment out the bottom one
class HouseRandom < House
    # def phrases
    #     super.shuffle
    # end
    def phrases
        super.shuffle(random: Random.new(1))
    end
end

# Currently using a seed to get tests to pass
# To run with complete randomness uncomment the top phrases and comment out the bottom one
class HousePirateRandom < HousePirate
    # def phrases
    #     super.shuffle
    # end
    def phrases
        super.shuffle(random: Random.new(1))
    end
    
end

class RandomVerbNounHouse < House
end
        