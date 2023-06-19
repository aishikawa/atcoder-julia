function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    s = readline()

    ss = []
    for i=1:n
        if length(ss) > 0 && (s[i] == 'U' && (ss[end] == 'L' || ss[end] == 'R'))
            pop!(ss)
        else
            push!(ss, s[i])
        end
    end

    for c in ss
        if c == 'U'
            x = x ÷ 2
        elseif c == 'L'
            x = 2x
        elseif c == 'R'
            x = 2x+1
        end
    end
    x
end

println(solve())
