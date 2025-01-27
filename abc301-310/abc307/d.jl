function solve()
    N = parse(Int, readline())
    S = collect(readline())

    s = Vector{Int}()
    for i=1:N
        if S[i] == '('
            push!(s, i)
        elseif !isempty(s) && S[i] == ')'
            b = pop!(s)
            S[b:i] .= '.'
        end
    end

    S = [s for s in S if s ≠ '.']

    String(S)
end

println(solve())