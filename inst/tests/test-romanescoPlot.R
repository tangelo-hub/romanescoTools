context("romanescoPlot tests")

test_that("plot expression", {
   exprCmd <- expression({
      plot(1:10)
   })
   exprImage <- romanescoPlot(exprCmd)
   
   expect_true(is.character(exprImage))
   expect_true(nchar(exprImage) > 1000)
})

test_that("plot lattice", {
   latticeCmd <- xyplot(1:10 ~ 1:10)
   latticeImage <- romanescoPlot(latticeCmd)
   
   expect_true(is.character(latticeImage))
   expect_true(nchar(latticeImage) > 1000)
})

test_that("plot ggplot", {
   ggplotCmd <- qplot(1:10, 1:10)
   ggplotImage <- romanescoPlot(ggplotCmd)
   
   expect_true(is.character(ggplotImage))
   expect_true(nchar(ggplotImage) > 1000)
})

