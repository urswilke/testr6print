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
  res <- tibble::tibble(a = 1)
  class(res) <- c("tbl_subclass", class(res))
  res
}
ctl_new_rowid_pillar.tbl_subclass <- function(controller, x, width, ...) {
  out <- NextMethod()
  pillar::new_pillar(
    list(
      title = out$title,
      type = out$type,
      data = pillar::pillar_component(
        pillar::new_pillar_shaft(list(row_ids = "test"),
                                 width = width,
                                 class = "pillar_rif_shaft"
        )
      )
    ),
    width = width
  )
}
