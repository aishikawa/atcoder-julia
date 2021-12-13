function print_seq(s)
    print(length(s))
    for ss in s
        print(" ", ss)
    end
    println()
end

function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    bk = Dict{Int, Array{Int, 1}}()
    for i=0:199
        bk[i] = Array{Int, 1}()
    end

    cnt = min(n, 8)
    for i in 1:(1<<cnt)
        sig = 0
        s = Array{Int, 1}()
        for j in 0:cnt-1
            if i & (1<<j) ≠ 0
                sig += as[j+1]
                sig %= 200
                push!(s, j+1)
            end
        end
        if length(bk[sig]) ≠ 0
            println("Yes")
            print_seq(bk[sig])
            print_seq(s)
            return
        else
            bk[sig] = s
        end
    end
    println("No")
end

solve()
