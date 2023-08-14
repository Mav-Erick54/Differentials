data <- read_excel("E:/Desktop 23/Articles in Processing/ncRNA/REVISED/Supplementary 2_Journal.xlsx", sheet = "Sheet1")
View(data)
data("data")
ggmaplot(data, main = expression("Group 1" %->% "Group 2"),
+          fdr = 0.05, fc = 2, size = 0.4,
+          palette = c("#B31B21", "#1465AC", "darkgray"),
+          genenames = as.vector(diff_express$name),
+          legend = "top", top = 20,
+          font.label = c("bold", 11),
+          font.legend = "bold",
+          font.main = "bold",
+          ggtheme = ggplot2::theme_minimal())
ggmaplot(data, main = expression("Group 1" %->% "Group 2"),
+          fdr = 0.05, fc = 2, size = 0.4,
+          palette = c("#B31B21", "#1465AC", "darkgray"),
+          genenames = as.vector(data$name),
+          legend = "top", top = 20,
+          font.label = c("bold", 11),
+          font.legend = "bold",
+          font.main = "bold",
+          ggtheme = ggplot2::theme_minimal())
ggmaplot(data, main = expression("Group 1" %->% "Group 2"),
+          fdr = 0.05, fc = 2, size = 0.4,
+          palette = c("#B31B21", "#1465AC", "darkgray"),
+          genenames = as.vector(data$name),
+          legend = "top", top = 20,
+          font.label = c("bold", 11),
+          font.legend = "bold",
+          font.main = "bold",
+          ggtheme = ggplot2::theme_minimal())
ggmaplot(data, main = expression("Group 1" %->% "Group 2"), fdr = 0.05, fc = 2, size = 0.4, palette = c("#B31B21", "#1465AC", "darkgray"), genenames = as.vector(data$name), legend = "top", top = 20, font.label = c("bold", 11), font.legend = "bold", font.main = "bold", ggtheme = ggplot2::theme_minimal())
data <- read_excel("E:/Desktop 23/Articles in Processing/ncRNA/REVISED/Book1.xlsx", sheet = "Sheet2")
library(ggplot2)
install.packages("ggplot2")
library(ggplot2)
install.packages("reshape2")
library(reshape2)
install.packages("readxl")
library(readxl)
ggmaplot(data, main = expression("Group 1" %->% "Group 2"), fdr = 0.05, fc = 2, size = 0.4, palette = c("#B31B21", "#1465AC", "darkgray"), genenames = as.vector(data$name), legend = "top", top = 20, font.label = c("bold", 11), font.legend = "bold", font.main = "bold", ggtheme = ggplot2::theme_minimal())
