function solve()
    ps = [parse(Int, x) for x in split(readline())]
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    ret = ""
    for i in ps
        ret *= alphabet[i]
    end
    ret
end

println(solve())
