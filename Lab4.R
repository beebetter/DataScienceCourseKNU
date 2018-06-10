# 1. Які назви стовпців файлу даних?
data <- data.frame(read.csv("C:/Users/admin/Downloads/hw1_data.csv"))
colnames(data)
#[1] "Ozone"   "Solar.R" "Wind"    "Temp"    "Month"   "Day" 

# 2. Виведіть перші 6 строк фрейму даних.
print(data[1:6, ])

# 3. Скільки спостерігань (строк) в дата фреймі?
last <- length(data[,"Ozone"])
print(last)

# 4. Виведіть останні 10 строк дата фрейму.
print(data[(last-9):last, ])
# Ozone Solar.R Wind Temp Month Day
# 144    13     238 12.6   64     9  21
# 145    23      14  9.2   71     9  22
# 146    36     139 10.3   81     9  23
# 147     7      49 10.3   69     9  24
# 148    14      20 16.6   63     9  25
# 149    30     193  6.9   70     9  26
# 150    NA     145 13.2   77     9  27
# 151    14     191 14.3   75     9  28
# 152    18     131  8.0   76     9  29
# 153    20     223 11.5   68     9  30

# 5. Як багато значень «NA» в стовпці «Ozone»?
print(sum(is.na(data[, "Ozone"])))
# [1] 37

# 6. Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.
print(mean(data[!is.na(data[, "Ozone"]), "Ozone"]))
# [1] 42.12931

# 7. Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. 
subdata <- data[!is.na(data$Ozone) & (data$Ozone > 31) & !is.na(data$Temp) & (data$Temp > 90), ]
print(subdata)
# Ozone Solar.R Wind Temp Month Day
# 69     97     267  6.3   92     7   8
# 70     97     272  5.7   92     7   9
# 120    76     203  9.7   97     8  28
# 121   118     225  2.3   94     8  29
# 122    84     237  6.3   96     8  30
# 123    85     188  6.3   94     8  31
# 124    96     167  6.9   91     9   1
# 125    78     197  5.1   92     9   2
# 126    73     183  2.8   93     9   3
# 127    91     189  4.6   93     9   4

# Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?
print(mean(subdata[!is.na(subdata[, "Solar.R"]), "Solar.R"]))
# [1] 212.8

# 8. Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює 6)?
print(mean(data[data$Month == 6, ]$Temp, na.rm=TRUE))
# [1] 79.1

# 9. Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?
print(max(data[data$Month == 5, ]$Ozone, na.rm=TRUE))
# [1] 115
