function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    sol = 0
    for l=k:n+1
        maxsum = l*(2n-l+1)÷2
        minsum = l*(l-1)÷2
        sol += maxsum - minsum + 1
        sol %= 1_000_000_007
    end
    return sol
end

println(solve())
