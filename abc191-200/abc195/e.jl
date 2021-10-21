function solve()
    n = parse(Int, readline())
    s = [parse(Int, x) for x in readline()]
    x = readline()

    dp = Set{Int}(0)

    for i in n:-1:1
        if x[i] == 'T'
            dp = Set{Int}(r for r in 0:6 if 10r % 7 ∈ dp || (10r+s[i]) % 7 ∈ dp)
        else
            dp = Set{Int}(r for r in 0:6 if 10r % 7 ∈ dp && (10r+s[i]) % 7 ∈ dp)
        end
    end
    0 ∈ dp ? "Takahashi" : "Aoki"
end

println(solve())
