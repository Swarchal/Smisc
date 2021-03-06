context("list_to_dataframe")

# example data
split_iris <- split(iris, iris$Species)
list_out <- lapply(split_iris, function(x) {x["Species"] <- NULL; x})
out <- list_to_dataframe(list_out, col_name = "Species")

test_that("returns errors when expected",{
    expect_error(list_to_dataframe(iris, col_name = "Species"))
    expect_is(out, 'data.frame')
    expect_equal(colnames(out), colnames(iris))
    expect_equal(nrow(out), nrow(iris))
})
