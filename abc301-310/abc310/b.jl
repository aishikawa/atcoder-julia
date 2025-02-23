struct Product
    price::Int
    func::Set{Int}
end

function is_superior(p1::Product, p2::Product)::Bool
    if p1.price < p2.price
        false
    elseif p1.price == p2.price
        p1.func ⊆ p2.func && length(p1.func) < length(p2.func) ? true : false
    else
        p1.func ⊆ p2.func ? true : false
    end
end

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    products = Vector{Product}(undef, N)
    for i=1:N
        l = [parse(Int, x) for x in split(readline())]
        products[i] = Product(l[1], Set{Int}(l[3:end]))
    end

    for p1 in products, p2 in products
        if is_superior(p1, p2)
            return "Yes"
        end
    end

    "No"
end

println(solve())
