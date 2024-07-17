using Primes

function solve()
    T = parse(Int, readline())
    for _=1:T
        N = parse(Int, readline())
        ans = [0, 0]
        for (v, n) in factor(N)
            if n == 2
                ans[1] = v
            else
                ans[2] = v
            end
        end
        println("$(ans[1]) $(ans[2])")
    end
end

solve()
