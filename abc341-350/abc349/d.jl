function solve()
    L, R = [parse(Int, x) for x in split(readline())]

    ans = Vector{Tuple{Int, Int}}()

    while L < R
        p = 0
        while L % 2^(p+1) == 0 && p < 61
            p += 1
        end
        while L + 2^p > R
            p -= 1
        end
        push!(ans, (L, L+2^p))
        L = L + 2^p
    end

    println(length(ans))
    for (l, r) in ans
        println("$l $r")
    end
end

solve()
