using Random, Distributions, Plots

function GetForOneSample(xmin,alpha)
    u = rand(Uniform(0,1))
    return xmin*((1-u)^(1/(1-alpha)))
end

function generate(n, xmin, alpha)
    return [GetForOneSample(xmin, alpha) for i in 1:n]
end

# Testing
histogram(generate(n = 1000, xmin = 2, alpha = 2.5))
