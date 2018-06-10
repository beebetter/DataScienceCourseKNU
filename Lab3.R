# 1. Функція add2(x, y), яка повертає суму двох чисел.
add2 <- function(x, y) {
  return(x + y)
}
add2(1.2, 3.3)
#[1] 4.5
add2(c(1, 2), 3.3)
# [1] 4.3 5.3

# 2. Функція above(x, n), яка приймає вектор та число n, 
# та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.
x <- sample(1:20, 20, replace = F)
print(x)
#[1] 15  7  8 12 19 13  9 11 17  6 10  3  1  5 16 14 18  2 20  4

above <- function(x, n) {
  if (missing(n)) n <- 10
  return (x[x > n])
}
print(above(x))
# [1] 15 12 19 13 11 17 16 14 18 20
print(above(x, 18))
# [1] 19 20

# 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, 
# порівнює всі його елементи за допомогою exp з n, 
# та повертає елементи вектору, які відповідають умові expression. 
# Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. 
# Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. 
# Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.
my_ifelse <- function(x, exp, n) {
  if (exp == "<"){
    return(x[x < n])
  }else if (exp == ">"){
    return(x[x > n])
  }else if (exp == "<="){
    return(x[x <= n])
  }else if (exp == ">="){
    return(x[x >= n])
  }else if (exp == "=="){
    return(x[x == n])
  } else return(x)
}
my_ifelse(x, "<", 5)
# [1] 3 1 2 4
my_ifelse(x, "==", 5)
# [1] 5

# 4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) 
# по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, 
# чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
columnmean<-function(x,removeNA=TRUE){
  apply(x,2,mean,na.rm=removeNA)
}

df <- data.frame("a" = c(1:5, NA), "b" = c(10, NA, NA, 40, NA, 60), "c" = 1:6 * 6)
columnmean(df, T)
# a        b        c 
# 3.00000 36.66667 21.00000 
columnmean(df, F)
# a  b  c 
# NA NA 21
