apple <-c("red", "green", "blue")
print(apple)
print (class(apple))


numbers <-c(1,2,3,4,5)
print(numbers)
print(class(numbers))


num_let <-c(1,2,"Hi",4,"Bye")
print(num_let)
print(class(num_let))


mylist <-list(x = c(1,2,3,4,5), y = c("Hi", "Bye"))
print(mylist[[2]])



mat1 <-matrix(1:10, nrow=2, ncol=5, byrow = TRUE)
print(mat1)


mat2 <-matrix(20:30, nrow =2, ncol=5, byrow = TRUE)
print(mat2)

result <- mat1*mat2
print("resultant matrix =")
print(result)


print(result[2,2])


array_data <-array(1:27, dim = c(3,3,3))
print(array)
print(array[2,2,2])



