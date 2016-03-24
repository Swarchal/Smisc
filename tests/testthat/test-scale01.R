context("scale01")

test_that("returns expected values",{
    expect_equal(min(scale01(rnorm(100)), 0, tolerance = 1e-5))
    expect_equal(max(scale01(rnorm(100, 100, 100))), 1, tolerance = 1e-5)
})


