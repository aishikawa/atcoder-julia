function solve()
    counter = Dict("AC"=>0, "WA"=>0, "TLE"=>0, "RE"=>0)
    n = parse(Int, readline())
    for i=1:n
        s = readline()
        counter[s] += 1
    end
    println("AC x $(counter["AC"])")
    println("WA x $(counter["WA"])")
    println("TLE x $(counter["TLE"])")
    println("RE x $(counter["RE"])")
end

solve()
