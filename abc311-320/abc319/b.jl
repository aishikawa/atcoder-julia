function solve()
    N = parse(Int, readline())
    ans = Vector{Char}(undef, N+1)
    # ans[1] = '1'
    factors = [j for j=1:9 if N%j==0]
    for i=0:N
        k = findfirst(j -> i%(N÷j)==0, factors)
        ans[i+1] = isnothing(k) ? '-' : Char(factors[k]+48)
    end
    String(ans)
end

println(solve())
