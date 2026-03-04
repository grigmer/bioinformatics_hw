# first_plot.R
# Создание векторов
genes <- c("BRCA1", "TP53", "EGFR")
expression <- c(12.5, 45.2, 30.1)
condition <- c("Control", "Treatment", "Treatment")
# Объединение в data frame
exp_data <- data.frame(genes, expression, condition)

# Вывод структуры таблицы
str(exp_data)

# Построение столбчатой диаграммы
png("expression_plot.png", width = 800, height = 600)
barplot(exp_data$expression, 
        names.arg = exp_data$genes,
        col = c("blue", "red", "green"),
        main = "Gene Expression Levels",
        xlab = "Genes",
        ylab = "Expression Value")
dev.off()
cat("График сохранён в expression_plot.png\n")
