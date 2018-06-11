# 1. Написати функцію pmean, яка обчислює середнє значення (mean) забруднення 
# сульфатами або нітратами серед заданого переліка моніторів. 
# Ця функція приймає три аргументи: «directory», «pollutant», «id». 
# Directory – папка, в якій розміщені дані, 
# pollutant – вид забруднення, 
# id – перелік моніторів. 
# Аргумент id має значення за замовчуванням 1:332. 
# Функція повинна ігнорувати NA значення. 
dir <- "C:/Users/admin/Downloads/rprog_data_specdata/specdata/"
# Приклад роботи функції:
# mean("specdata", "sulfate", 1:10)
# ## [1] 4.064128
pmean(dir, "sulfate", 1:10)
# [1] 4.064128

# pmean("specdata", "sulfate", 55)
# ## [1] 3.587319
pmean(dir, "sulfate", 55)
# [1] 3.587319

# pmean("specdata", "nitrate")
# ## [1] 1.702932
pmean(dir, "nitrate")
# [1] 1.702932
