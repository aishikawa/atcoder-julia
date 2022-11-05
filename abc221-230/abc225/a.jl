function solve()
    s = readline()
    n = length(unique(s))
    if n == 1
        1
    elseif n == 2
        3
    else
        6
    end
end

println(solve())
