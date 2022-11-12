function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    a = zeros(Int, (n, 2))
    for _=1:q
        qq = [parse(Int, x) for x in split(readline())]
        if qq[1] == 1
            a[qq[2], 2] = qq[3]
            a[qq[3], 1] = qq[2]
        elseif qq[1] == 2
            a[qq[2], 2] = 0
            a[qq[3], 1] = 0
        else
            b = qq[2]
            bb = a[b, 1]
            while bb ≠ 0
                b = bb
                bb = a[b, 1]
            end
            ts = Vector{Int}()
            push!(ts, b)
            bb = a[b, 2]
            while bb ≠ 0
                b = bb
                push!(ts, b)
                bb = a[b, 2]
            end
            println(length(ts), " ", join(ts, " "))
        end
    end
end

solve()
