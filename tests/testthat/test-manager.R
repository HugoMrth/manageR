test_that("Functions run properly :", {
  expect_no_error(clearEnv())
  expect_no_error(clearPlots())

  expect_no_error(get_script_file_path())
  expect_no_error(get_script_path())
  expect_no_error(get_file_path())

  expect_no_error(oldw())
})
