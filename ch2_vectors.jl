# To test the concepts of the second chapter,
# we will create a discrete reprensentation of a span
module chapter2

using Plots

x_basis = 1
y_basis = 1

y_range = -10:0.5:10
x_range = -10:0.5:10
x_values = []
y_values = []

for y in y_range
  for x in x_range
    if (x^2 + y^2) < 100
      push!(x_values, x)
      push!(y_values, y)
    end
  end
end

my_zeros = zeros(Int, length(x_values), 1)

display(quiver(my_zeros, my_zeros, quiver = (x_basis * x_values, y_basis * y_values)))

end


