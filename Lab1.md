# 1. Створити змінні базових (atomic) типів. Базові типи: 
# character, 
c1 <- "char" 

# numeric, 
c2 <- 1.1

# integer, 
c3 <- 1

# complex, 
c4 <- 1 + 1i

# logical.
c5 <- T

# 2. Створити вектори, які: 
# містить послідовність з 5 до 75; 
v1 <- 5:75

# містить числа 3.14, 2.71, 0, 13; 
v2 <- c(3.14, 2.71, 0, 13)

# 100 значень TRUE.
v3 <- rep(T, 100)

# 3. Створити наступну матрицю за допомогою matrix, 
m1 <- matrix(c(c(0.5, 3.9, 0, 2), 
               c(1.3, 131, 2.2, 7),
               c(3.5, 2.8, 4.6, 5.1)), crow = 3)
# та за допомогою cbind або rbind
m2 <- cbind(c(0.5, 3.9, 0, 2), 
            c(1.3, 131, 2.2, 7),
            c(3.5, 2.8, 4.6, 5.1))

# 4. Створити довільний список (list), в який включити всі базові типи.
l <- list(c1, c2, c3, c4, c5, v1, v2, v3, m1, m2)

# 5. Створити фактор з трьома рівнями «baby», «child», «adult».
f1 <- factor(c("adult", "baby", "adult", "child", "adult"), levels = c("baby", "child", "adult"))

# 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. 
x <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
print(min(which(is.na(x)))) 
#Знайти кількість значень NA.
print(sum(is.na(x)))

# 7. Створити довільний data frame та вивести в консоль.
n <- 7
df <- data.frame(id = 1:n, 
                 sex = sample(c("Male", "Female"), n, replace=T), 
                 class = sample(c(1, 2, 3), n, replace=T))
print(df)
#id sex class
#1  1   Male     2
#2  2 Female     2
#3  3 Female     3
#4  4   Male     1
#5  5 Female     1
#6  6 Female     2
#7  7 Female     3

# 8. Змінити імена стовпців цього data frame.
colnames(df)[2] <- "gender"
colnames(df)[-2] <- c("id_", "class_")
print(df)
#id_ gender class_
#1   1   Male      2
#2   2 Female      2
#3   3 Female      3
#4   4   Male      1
#5   5 Female      1
#6   6 Female      2
#7   7 Female      3
