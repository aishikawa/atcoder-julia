function solve()
    S = readline()
    a = zeros(Int, 100)
    for i=1:26
        t = count(==('a'+i-1), S)
        if t ≠ 0
            a[t] += 1
        end
    end
    all(x -> (x == 0 || x == 2), a) ? "Yes" : "No"
end

println(solve())
