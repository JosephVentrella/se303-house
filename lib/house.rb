class House
    def line(number)
        case number
        when 1
            "This is the house that Jack built.\n"
        when 2
            "This is the malt that lay in the house that Jack built.\n"
        when 3
            "This is the rat that ate the malt that lay in the house that Jack built.\n"
        when 4
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        when 5
            "This is #{phrase(number -7 )}the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        else
            "This is #{phrase(number)}#{phrase(number -1 )}#{phrase(number -2 )}#{phrase(number -3 )}#{phrase(number -4 )}#{phrase(number -5 )}#{phrase(number -6 )}#{phrase(number -7 )} the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        end
    end
    def recite()
        (1..12).map{|n| line(n)}.join("\n")
    end

    def phrase(number)
        case number
        when 12
            "the horse and the hound and the horn that belonged to "
        when 11
            "the farmer sowing his corn that kept "
        when 10
            "the rooster that crowed in the morn that woke "
        when 9 
            "the priest all shaven and shorn that married "
        when 8
            "the man all tattered and torn that kissed "
        when 7
            "the maiden all forlorn that milked "
        when 6
            "the cow with the crumpled horn that tossed "
        when 5
            "the dog that worried "
        else
            ""
        end
        
    end
end