using Primes

function solve()
    N = parse(Int, readline())
    ps = primes(300000)
    lenp = length(ps)
    ans = 0
    for i=1:lenp-2
        a2 = ps[i]^2
        if a2 > N
            break
        end
        for j=i+1:lenp-1
            a2b = a2*ps[j]
            if a2b > N
                break
            end
            for k=j+1:lenp
                a2bc = a2b * ps[k]
                if a2bc > N
                    break
                end
                a2bc2 = a2bc * ps[k]
                if a2bc2 ≤ N
                    ans += 1
                else
                    break
                end
            end
        end
    end
    ans
end

println(solve())
