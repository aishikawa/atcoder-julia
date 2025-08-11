using OffsetArrays

function solve()
    N = parse(Int, readline())
    a = zeros(Int, 24)
    a = OffsetArray(a, 0:23)
    for i=1:N
        W, X = [parse(Int, x) for x in split(readline())]
        b = (9 + X) % 24
        e = (17 + X) % 24
        if b < e
            a[b:e] .+= W
        else
            a[b:end] .+= W
            a[0:e] .+= W
        end
    end    
    maximum(a)
end

println(solve())
