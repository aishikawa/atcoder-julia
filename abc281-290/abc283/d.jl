function solve()
    S = collect(readline())

    st = Vector{Set{Char}}()
    push!(st, Set{Char}())
    rest = Set{Char}('a':'z')
    
    for c in S
        if c == '('
            push!(st, Set{Char}())
        elseif c == ')'
            union!(rest, pop!(st))
        else
            if c ∈ rest
                delete!(rest, c)
                push!(st[end], c)
            else
                return "No"
            end
        end
    end

    "Yes"
end

println(solve())
