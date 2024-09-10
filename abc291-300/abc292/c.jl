function f(x)
    ret = 0
    sq = floor(Int, sqrt(x))
    for i=1:sq
        if x % i == 0
            ret += 1
            if i*i ≠ x
                ret += 1
            end
        end
    end
    ret
end

function solve()
    N = parse(Int, readline())

    ans = 0
    for ab=1:N÷2
        n = f(ab) * f(N-ab)
        ans += n
        if 2ab ≠ N
            ans += n
        end
    end

    ans
end

println(solve())
