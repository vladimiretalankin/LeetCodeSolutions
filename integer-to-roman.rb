#12
# @param {Integer} num
# @return {String}
def int_to_roman(num)
    result = ""
    (num / 1000).times {result << "M"}

    hundreds = (num % 1000) / 100
    if hundreds == 9
        result << "CM"
    elsif hundreds >= 5
        result << "D"
        (hundreds - 5).times {result << "C"}
    elsif hundreds == 4
        result << "CD"
    else
        hundreds.times {result << "C"} 
    end      

    tens = (num % 100) / 10
    if tens == 9
        result << "XC"
    elsif tens >= 5
        result << "L"
        (tens - 5).times {result << "X"}
    elsif tens == 4
        result << "XL"
    else 
        tens.times {result << "X"}
    end

    ones = num % 10
    if ones == 9
        result << "IX"
    elsif ones >= 5
        result << "V"
        (ones - 5).times {result << "I"}
    elsif ones == 4
        result << "IV"
    else 
        ones.times {result << "I"}
    end

    result
end
