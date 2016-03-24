context("cv")

test_that("returns expected values",{
    expect_equal(cv(c(1,1,1,1,1,1)), O, tolerance = 1e-5)
    expect_true(cv(rnorm(100, 100, 100)), > 50)
})
