context("Test summary measure functions")

test_that("aux_mean input is valid", {
  expect_equal(aux_mean(30, 0.3), 9)
  expect_length(aux_mean(10, 0.5), 1)
  expect_type(aux_mean(30, 0.3), 'double')
})

test_that("aux_variance input is valid", {
  expect_equal(aux_variance(30, 0.3), 6.3)
  expect_length(aux_variance(10, 0.5), 1)
  expect_type(aux_variance(30, 0.3), 'double')
})

test_that("aux_mode input is valid", {
  expect_equal(aux_mode(10, 0.3), 3)
  expect_length(aux_mode(21, 0.5), 2)
  expect_type(aux_mode(10,0.5), 'double')
})

test_that("aux_skewness input is valid", {
  expect_length(aux_skewness(10, 0.3), 1)
  expect_equal(aux_skewness(15, 0.7), -0.2253745, tolerance = 3.21e-08)
  expect_type(aux_skewness(30, 0.5), 'double')
})

test_that("aux_kurtosis input is valid", {
  expect_length(aux_kurtosis(10, 0.3), 1)
  expect_equal(aux_kurtosis(15, 0.7), -0.08253968)
  expect_type(aux_kurtosis(30, 0.5), 'double')

})
