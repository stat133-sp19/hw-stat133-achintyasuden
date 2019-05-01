context("Test binomial functions")

test_that("bin_choose inputs are valid", {
  expect_type(bin_choose(5, 2), 'double')
  expect_length(bin_choose(10, 1), 1)
  expect_error(bin_choose(1,2))
})

test_that("bin_probability inputs are valid", {
  expect_equal(bin_probability(2,3,0.5), 0.375)
  expect_length(bin_probability(1, 3, 0.5), 1)
  expect_error(bin_probability(2, 3, -0.1))
})

test_that("bin_distribution inputs are valid", {
  expect_equal(typeof(bin_distribution(4, 0.2)), "list")
  expect_equal(ncol(bin_distribution(4, 0.2)), 2)
  expect_length(bin_distribution(4, 0.2)$probability, 5)
})

test_that("bin_cumulative inputs are valid", {
  expect_equal(typeof(bin_cumulative(4, 0.2)), "list")
  expect_equal(ncol(bin_cumulative(4, 0.2)), 3)
  expect_length(bin_cumulative(4, 0.2)$probability, 5)
  expect_error(bin_cumulative(4,-0.2))
  })
