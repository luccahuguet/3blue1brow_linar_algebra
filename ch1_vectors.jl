# To test the concepts of the first chapter,
# we simply add two vectors and plot the operands and the result.
module chapter1

using Plots

x_values = [3, 2]

y_values = [1, 3]

zeros = [0, 0, 0]

println("x_values: ", x_values)
println("y_values: ", y_values)
println("x_values + y_values: ", x_values + y_values)

vector3 = x_values + y_values

push!(x_values, vector3[2])
push!(y_values, vector3[1])

display(quiver(zeros, zeros, quiver = (x_values, y_values)))

end



