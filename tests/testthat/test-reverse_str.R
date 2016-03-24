context("reverse_str")

test_that("returns expected",{
    expect_equal(reverse_str("abcde"), "edcba")
    expect_equal(reverse_str("xy"), "yx")
})
