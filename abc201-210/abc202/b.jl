function solve()
    s = readline()
    ret = ""
    for c in s
        r = if c == '6'
            '9'
        elseif c == '9'
            '6'
        else
            c
        end
        ret = r * ret
    end
    ret
end

println(solve())
