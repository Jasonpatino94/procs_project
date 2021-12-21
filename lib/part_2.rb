def reverser(string, &proc)

    proc.call(string.reverse)

end

def word_changer(sentence, &proc)

        split = sentence.split(' ')

        array = []

        split.map {|word| array << proc.call(word)}

        array.join(' ')
end

def greater_proc_value(num, proc1, proc2)

    answer1 = proc1.call(num)
    answer2 = proc2.call(num)

    if answer1 > answer2
        return answer1
    else
        return answer2
    end
end

def and_selector(array, proc1, proc2)

    both = []

    array.each do |ele|
        if proc1.call(ele)&& proc2.call(ele)
            both << ele
        end
    end

    both
end


def alternating_mapper(array, proc1, proc2)

    array1 = []

    array.each_with_index do |word, idx| 
        if idx.even?
            array << proc1.call(word) 
        else
            array << proc2.call(word) 
        end
    end

    array1
end