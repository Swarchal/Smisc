context("medians")

test_that("colMedians works",{
    expect_is(colMedians(iris[,1:4]), 'numeric')
    expect_equal(length(colMedians(iris[,1:4])), 4L)
})

test_that("rowMedians works",{
    expect_is(rowMedians(iris[,1:4]), 'numeric')
    expect_equal(length(rowMedians(iris[,1:4])), 150L)
})
