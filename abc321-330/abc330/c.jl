function solve()
    D = parse(Int, readline())
    sqrtD = ceil(Int, sqrt(D))
    ans = typemax(Int)
    for x=0:sqrtD
        rest = D - x^2
        if rest < 0
            ans = min(ans, -rest)
        else
            sqrt_rest = sqrt(rest)
            for y in [floor(Int, sqrt_rest), ceil(Int, sqrt_rest)]
                ans = min(ans, abs(x^2 + y^2 - D))
            end
        end
    end
    ans
end

println(solve())
