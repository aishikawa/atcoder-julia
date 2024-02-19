function solve()
    n = parse(Int, readline())
    a = Array{Char, 2}(undef, n, n)
    for i=1:n
        a[i, :] = collect(readline())
    end
    
    for i=1:n-1, j=i:n
        if (a[i, j] == 'W' && a[j, i] ≠ 'L') || (a[i, j] == 'D' && a[j, i] ≠ 'D') || (a[i, j] == 'L' && a[j, i] ≠'W') 
            return "incorrect"
        end
    end
    "correct"
end

println(solve())
