function check(p, x, m)
    n = BigInt(0)
    pp = BigInt(1)
    x = reverse(x)
    for d in x
        n += parse(Int, d) * pp
        pp *= p
    end
    # println(" ", p, " ", reverse(x), " ", n)
    n ≤ m
end

function solve()
    x = readline()
    m = parse(BigInt, readline())

    if length(x) == 1
        parse(Int, x) ≤ m ? 1 : 0
    else
        max_ = 10::Int64^18 + 1
        min_min = maximum([parse(Int, a) for a in x]) + 1
        min_ = min_min

        if !check(min_, x, m)
            0
        else
            while min_ + 1 < max_
                # println(min_, " ", max_)
                p = (min_ + max_) ÷ 2
                if check(p, x, m)
                    min_ = p
                else
                    max_ = p
                end
            end
            # println("sol ", min_min, " ", min_, " ", max_)
            min_ - min_min + 1
        end
    end
end

println(solve())
