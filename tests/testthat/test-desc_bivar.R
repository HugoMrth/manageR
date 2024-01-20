library(testthat)
library(useFull)


testthat::test_that("Fonctionne avec une seule variable a expliquer", {
  expect_is(desc.bivar(data = iris, dependent = "Species", expl = 1), "data.frame")
})

#OK
#tri_croise(data = tabdata, dependent = "Group", expl = c("Age", "Sex", "Race", "BMI"))


#Tourne mais full bug --> FIXED
#tri_croise(data = tabdata, dependent = "Group", expl = c("Sex"))

#OK
#tri_croise_map_fun(dependent = tabdata$Group, expl = tabdata$Sex)

# tri_croise(data = tabdata, dependent = "Group",
#            expl = c("Age", "Sex", "Race", "BMI"),
#            freq.test = "fisher")
#
# chisq.test(matrix(c(108,177,3,4), ncol = 2, byrow = TRUE))
#
# "-" < 0.001





#Tests nouvel argument
#mean.test
# desc.bivar(data = tabdata, dependent = "Group", expl = c("Age", "Sex", "Race", "BMI"))
# desc.bivar(data = tabdata, dependent = "Group", expl = c("Age", "Sex", "Race", "BMI"),
#            mean.test = "wilcox", freq.test = "fisher")
# desc.bivar(iris, dependent = 5, expl = 1:4,
#            mean.test = "student", cut.pvalue = 0.00000000000001)
# desc.bivar(iris, dependent = 5, expl = 1:4,
#            mean.test = "wilcox", cut.pvalue = 0.00000000000001)




#Tests une seule var + colonne type de test
# desc.bivar(data = iris,
#            dependent = "Species",
#            expl = 1)
# desc.bivar(data = iris,
#            dependent = "Species",
#            quanti = "deux",
#            mean.test = "wilcox",
#            expl = 1)
# desc.bivar(data = iris,
#            dependent = "Species",
#            quanti = "deux",
#            mean.test = "student",
#            var.equal = "test",
#            expl = 1)


# var_expl <- 1:4
# desc.bivar(data = iris, dependent = "Species", expl = var_expl,
#            include.test.name = TRUE)
# desc.bivar(data = iris, dependent = "Species", expl = var_expl,
#            quanti = "deux",
#            include.test.name = TRUE, include.n = FALSE, include.tot = FALSE)
# desc.bivar(data = iris, dependent = "Species", expl = var_expl,
#            quanti = "deux",
#            include.test.name = FALSE, include.n = FALSE, include.tot = TRUE)
# desc.bivar(data = iris, dependent = "Species", expl = var_expl,
#            quanti = "deux", mean.test = "kruskal",
#            include.test.name = TRUE, include.n = FALSE, include.tot = FALSE, include.ic = FALSE)
