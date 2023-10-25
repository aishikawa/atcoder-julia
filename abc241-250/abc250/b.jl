function solve()
    n, a, b = [parse(Int, x) for x in split(readline())]
    str1 = ""
    str2 = ""
    for i=1:n
        if isodd(i)
            str1 *= repeat(".", b)
            str2 *= repeat("#", b)
        else
            str1 *= repeat("#", b)
            str2 *= repeat(".", b)
        end
    end

    for i=0:a*n-1
        ii = i ÷ a
        if iseven(ii)
            println(str1)
        else
            println(str2)
        end
    end
end

solve()
