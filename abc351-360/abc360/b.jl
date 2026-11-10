function solve()
    S, T = collect.(split(readline()))

    lenS = length(S)
    ans = "No"
    for c=1:lenS-1, w=c:lenS-1
        buff = Vector{Char}()
        i = 0
        while i*w+c ≤ lenS
            push!(buff, S[i*w+c])
            i += 1
        end
        if buff == T
            ans = "Yes"
            break
        end
    end
    ans
end

println(solve())
