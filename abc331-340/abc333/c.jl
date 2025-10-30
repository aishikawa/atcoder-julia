function next_repunit_trio!(x::Vector{Char})
    last2 = findlast(y->y=='2', x)
    if isnothing(last2)
        last1 = findlast(y->y=='1', x)
        if isnothing(last1)
            pushfirst!(x, '1')
            x[2:end-1] .= '1'
        else            
            x[last1:end-1] .= '2'
        end
    else
        x[last2] = '3'
    end
end

function solve()
    N = parse(Int, readline())
    ans = ['3']

    for _=2:N
        next_repunit_trio!(ans)
    end

    String(ans)
end

println(solve())
