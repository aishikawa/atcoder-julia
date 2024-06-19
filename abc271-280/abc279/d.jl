using Printf

function solve()
    A, B = [parse(Int, x) for x in split(readline())]
    l = 0
    r = 10^21

    while l + 1 < r
        m = (l+r) ÷ 2
        s = B + A * (1 / sqrt(m+2) - 1 / sqrt(m+1))
        if s > 0
            r = m
        elseif s < 0
            l = m
        else
            l = r = m
        end
    end

    function f(x)
        B*x + (A / sqrt(x+1))
    end
    ans = min(f(l), f(r))
    
    @sprintf("%.10f", ans)
end

println(solve())
