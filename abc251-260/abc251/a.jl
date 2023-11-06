function solve()
    s = readline()
    ret = s
    while length(ret) < 6
        ret *= s
    end
    ret
end

println(solve())
