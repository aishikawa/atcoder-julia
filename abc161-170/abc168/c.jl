function solve()
    a, b, h, m = [parse(Int, x) for x in split(readline())]
    h_angle = 2π * (60h + m) / (12*60)
    m_angle = 2π * m / 60
    angle = abs(h_angle - m_angle)
    angle = angle > π ? 2π - angle : angle
    sqrt(a^2+b^2 - 2*a*b * cos(angle))
end

println(solve())
