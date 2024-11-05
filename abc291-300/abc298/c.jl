function solve()
    N = parse(Int, readline())
    Q = parse(Int, readline())

    box2card = Dict{Int, Vector{Int}}()
    card2box = Dict{Int, Vector{Int}}()

    for _=1:Q
        query = [parse(Int, x) for x in split(readline())]
        if query[1] == 1
            i, j = query[2:end]
            if j ∉ keys(box2card)
                box2card[j] = [i]
            else
                index = searchsortedfirst(box2card[j], i)
                insert!(box2card[j], index, i)
            end

            if i ∉ keys(card2box)
                card2box[i] = [j]
            else
                index = searchsortedfirst(card2box[i], j)
                if index > length(card2box[i]) || card2box[i][index] ≠ j
                    insert!(card2box[i], index, j)
                end
            end
        elseif query[1] == 2
            println(join(box2card[query[2]], " "))
        else
            println(join(card2box[query[2]], " "))
        end
    end
end

solve()
