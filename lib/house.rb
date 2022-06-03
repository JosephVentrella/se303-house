class House
    def line(number)
        case number
        when 1
            "This is the house that Jack built.\n"
        else
            "This is #{phrase(number)}#{phrase(number -1 )}#{phrase(number -2 )}#{phrase(number -3 )}#{phrase(number -4 )}#{phrase(number -5 )}#{phrase(number -6 )}#{phrase(number -7 )}#{phrase(number -8 )}#{phrase(number -9 )}#{phrase(number -10 )}the house that Jack built.\n"
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
        when 4
            "the cat that killed "
        when 3
            "the rat that ate "
        when 2
            "the malt that lay in "
        else
            ""
        end
        
    end
end