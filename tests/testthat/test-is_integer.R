context("is_integer")

test_that("returns expected values",{
    expect_true(is_integer(1))
    expect_false(is_integer(1.1))
    expect_true(is_integer(1.0))
    expect_equal(is_integer(c(1,2,3,4)), c(TRUE, TRUE, TRUE, TRUE))
    expect_error(is_integer("string"))
})
