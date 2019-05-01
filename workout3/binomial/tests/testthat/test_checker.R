context("Test checker functions")

test_that("check_prob input is valid", {
  expect_length(check_prob(0.5),1)
  expect_error(check_prob(2))
  expect_true(check_prob(0.1))
})

test_that("check_trials input is valid", {
  expect_length(check_trials(4), 1)
  expect_error(check_trials(-2))
  expect_true(check_trials(0))
})

test_that("check_success input is valid", {
  expect_length(check_success(2,3), 1)
  expect_error(check_success(3,2))
  expect_type(check_success(5,5), 'logical')
})

