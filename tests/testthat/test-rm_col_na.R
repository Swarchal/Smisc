context("rm_col_na")

# example data
data(iris)
df <- iris
df$test <- NA
df$test2 <- c(rep("test", 100), rep(NA, 50))
out <- rm_col_na(df)

test_that("removes expected columns",{
    expect_equal(ncol(df), 7L)
    expect_equal(ncol(out), 6L)
    expect_equal(names(out)[6], "test2")
})
