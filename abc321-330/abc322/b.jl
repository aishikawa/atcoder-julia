function solve()
    N, N = [parse(Int, x) for x in split(readline())]
    S = readline()
    T = readline()
    p = startswith(T, S)
    q = endswith(T, S)
    if p && q 
        0
    elseif p
        1
    elseif q
        2
    else
        3
    end
end

println(solve())
