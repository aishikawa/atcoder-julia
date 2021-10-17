function solve()
    a, b, c, d = [parse(Int, x) for x in split(readline())]

    takahashi = (c+b-1) ÷ b
    aoki = (a+d-1) ÷ d
    takahashi <= aoki ? "Yes" : "No"
end

println(solve())
