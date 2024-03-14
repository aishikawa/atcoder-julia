function solve()
    s = readline()
    char_to_int = Dict('a'=>1, 't'=>2, 'c'=>3, 'o'=>4, 'd'=>5, 'e'=>6, 'r'=>7)
    as = [char_to_int[c] for c in s]
    ret = 0
    for i=1:6, j=1:7-i
        if as[j] > as[j+1]
            as[j], as[j+1] = as[j+1], as[j]
            ret += 1
        end
    end
    ret
end

println(solve())
