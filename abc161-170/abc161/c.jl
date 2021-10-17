readintegers() = [parse(Int, x) for x in split(readline())]

function solve()
    n, k = readintegers()
    n = n % k
    ret = n
    n = abs(n - k)
    min(ret, n)
end

println(solve())
