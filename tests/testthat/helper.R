# Objects or functions defined in a helper file are available to all of your tests.
tab22 <- matrix(data = NA, ncol = 2, nrow = 2)
tab22[, 1] <- sample(1:19, 2)
tab22[, 2] <- 20 - tab22[, 1]

tab33 <- matrix(data = NA, ncol = 3, nrow = 3)
tab33[, 1] <- sample(1:19, 3)
tab33[, 2] <- sample(1:19, 3)
tab33[, 3] <- 45 - rowSums(tab33[, 1:2])

