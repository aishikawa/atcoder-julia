function sum_arithmetic(first::Int, d::Int, n::Int, M::Int)::Int
    last = (first + (n-1) * d) % M
    res = (first+last) % M
    res *= n
    res %= M
    res *= invmod(2, M)
    res % M
end

function row_data(x::Int, l::Int, r::Int, m::Int, M::Int)::Tuple{Int, Int}
    if isodd(x+l)
        l += 1
    end
    if isodd(x+r)
        r -= 1
    end
    if l > r
        (0, 0)
    else
        first = ((x-1)*m+l) % M
        num = 1 + (r-l) ÷ 2
        s = sum_arithmetic(first, 2, num, M)
        (s, num)
    end
end

function solve()
    M = 998244353
    n, m = [parse(Int, x) for x in split(readline())]
    q = parse(Int, readline())
    for i=1:q
        a,b,c,d = [parse(Int, x) for x in split(readline())]
        
        
        f1, n1 = row_data(a, c, d, m, M)
        d1 = (2*n1) % M
        d1 = (d1*m) % M
        c1 = (b-a+1)÷2 + (b-a+1)%2
        ans = sum_arithmetic(f1, d1, c1, M)

        f2, n2 = row_data(a+1, c, d, m, M)
        d2 = (2*n2) % M
        d2 = (d2*m) % M
        c2 = (b-a+1)÷2
        ans = (ans + sum_arithmetic(f2, d2, c2, M)) % M

        println(ans)
    end 
end

solve()
