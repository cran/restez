# LIBS
library(testthat)

# RUNNING
context('Testing \'mock-tools\'')
test_that('mock_rec() works', {
  record <- mock_rec(i = 1)
  expect_true(is.character(record))
})
test_that('mock_seq() works', {
  sequence <- mock_seq(i = 1, sqlngth = 100)
  expect_true(grepl(pattern = '[atcg]', x = sequence))
  expect_true(nchar(gsub(pattern = '[^atcg]', replacement = '',
                         x = sequence)) == 100)
})
test_that('mock_def() works', {
  def <- mock_def(i = 1)
  expect_true(is.character(def))
})
test_that('mock_org() works', {
  org <- mock_org(i = 1)
  expect_true(is.character(org))
})
test_that('mock_gb_df_generate() works', {
  df <- mock_gb_df_generate(n = 100)
  expect_true(nrow(df) == 100)
})
