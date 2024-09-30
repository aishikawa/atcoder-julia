function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    for i=1:H
        A = [parse(Int, x) for x in split(readline())]
        println(String([a == 0 ? '.' : 'A' + a - 1 for a in A]))
    end
end

solve()
