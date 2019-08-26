

def merge_sort(array)
    return array if array.length <= 1
    half_1 = merge_sort(array[0...array.length/2])
    half_2 = merge_sort(array[array.length/2..-1])
    merge(half_1, half_2)
end

def merge(half_1, half_2)
    result = []
    while half_1.length > 0 && half_2.length > 0 do
        if half_1.first <= half_2.first
            result.push(half_1.shift)
        else
            result.push(half_2.shift)
        end
    end
    if half_1.length > 0
        result += half_1
    else
        result += half_2
    end
    result
end
merge_sort([8, 7, 6, 5, 10, 2, 3, 100, 1000, 1, 4, 6, 6, 4])
