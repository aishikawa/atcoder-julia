function f(x::Int64)::Int64
    x*(x+1)÷2 % 998244353
end


function solve()
    nstr = readline()
    len = length(nstr)

    ret = 0::Int64
    for l=1:len-1
        x = (10^l - 10^(l-1)) % 998244353
        y = f(x)
        ret = (ret + y) % 998244353
    end
    n = parse(Int64, nstr)
    x = (n - 10^(len-1) + 1) % 998244353
    y = f(x)
    (ret + y) % 998244353
end

println(solve())
