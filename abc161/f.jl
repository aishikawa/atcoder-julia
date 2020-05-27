function getdivisors(n::Int)::Set{Int}
    ret = Set{Int}(n)
    for i=2:floor(Int, √n)
        if n % i == 0
            push!(ret, i)
            push!(ret, n÷i)
        end
    end
    ret
end


function solve()
    N = parse(Int, readline())
    ks = Set{Int}()
    if N > 2
        union!(ks, getdivisors(N-1))
    end
    for d in getdivisors(N)
        n = N
        while n % d == 0
            n ÷= d
        end
        if n % d == 1
            push!(ks, d)
        end
    end
    println(length(ks))
end

solve()
