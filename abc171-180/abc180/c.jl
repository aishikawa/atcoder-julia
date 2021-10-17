function solve()
    n = parse(Int, readline())
    m = floor(Int, √n)

    ds = Set{Int}()

    for x=1:m
        if n % x == 0
            push!(ds, x, n / x)
        end
    end
    ds = sort(collect(ds))
    for d in ds
        println(d)
    end
end

solve()
