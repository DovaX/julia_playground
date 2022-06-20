# Simple regression

m = 5.1; b = 7; x = rand(50,1)
y = m * x .+ b

# add noise
yn= y + randn(size(y)) * 2.5

# regression
X = zeros(50,2); X[:,1] = x;  X[:,2] = 1.0 # define exogenous variables X
beta_coeff = X\yn

slope =  round(coeff_pred[1], 2)
intercept = round(coeff_pred[2], 2)

println("$m, predicted slope: $slope")
println("$b, predicted intercept: $intercept")
