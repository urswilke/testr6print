MyClass <- R6::R6Class("MyClass",
                       public = list(
                         tbl_subclass_obj = NULL,
                         initialize = function() {
                           self$tbl_subclass_obj <- new_tbl_subclass()
                         },
                         print = function() {
                           self$tbl_subclass_obj |> print()
                           invisible(self)
                         }
                       ))

new_tbl_subclass <- function() {
  res <- tibble::tibble()
  class(res) <- c("tbl_subclass", class(res))
  res
}
