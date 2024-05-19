struct Node
    parent
    value::Int
end

function solve()
    Q = parse(Int, readline())
    ret = Vector{Int}()
    note = Dict{Int, Node}()
    current = Node(Nothing, -1)
    for _=1:Q
        q = readline()
        if startswith(q, "ADD")
            x = parse(Int, split(q)[2])
            n = Node(current, x)
            current = n
        elseif startswith(q, "DELETE")
            if current.parent ≠ Nothing
                current = current.parent
            end
        elseif startswith(q, "SAVE")
            y = parse(Int, split(q)[2])
            note[y] = current
        elseif startswith(q, "LOAD")
            z = parse(Int, split(q)[2])
            if z in keys(note)
                current = note[z]
            else
                current = Node(Nothing, -1)
            end
        end
        push!(ret, current.value)
    end
    join(ret, " ")
end

println(solve())
