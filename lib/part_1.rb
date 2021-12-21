def my_map(arr, &proc)
    new = []
    arr.each { |ele| new << proc.call(ele) }

    new
end

def my_select(arr, &proc)

    new = []

    arr.each do |ele|
        if proc.call(ele)
            new << ele
        end
    end

    new
end

def my_count(arr, &proc)

    count = 0

    arr.each do |ele|
        if proc.call(ele)
            count += 1
        end
    end

    count

end

def my_any?(arr, &proc)
    
    arr.each do |ele|
        if proc.call(ele)
            return true
        end
    end

    return false

end


def my_all?(arr, &proc)

    arr.each do |ele| 
        if !proc.call(ele)
            return false
        end
    end
     
    true
end

def my_none?(arr, &proc)

    arr.each do |ele|
        if proc.call(ele)
            return false
        end
    end

    return true

end
