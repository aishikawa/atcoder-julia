function solve()
    line = readline()
    ret = 0;
    ret += parse(Int, line)
    ret += parse(Int, line[2:3]*line[1])
    ret += parse(Int, line[3]*line[1:2])
    ret
end

println(solve())
