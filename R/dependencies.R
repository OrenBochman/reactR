#' Dependencies for React
#'
#' @param offline \code{logical} to use local file dependencies.  If \code{FALSE},
#'          then the dependencies use the Facebook cdn as its \code{src}.
#'          To use with \code{JSX} see \code{\link{babel_transform}}.
#'
#' @return \code{\link[htmltools]{htmlDependency}}
#' @importFrom htmltools htmlDependency
#' @export
#'
#' @examples
#' library(reactR)
#' library(htmltools)
#'
#' tagList(
#'   tags$script(
#'   "
#'     ReactDOM.render(
#'       React.createElement(
#'         'h1',
#'         null,
#'         'Powered by React'
#'       ),
#'       document.body
#'     )
#'   "
#'   ),
#'   html_dependency_react() #offline=FALSE for CDN
#' )
html_dependency_react <- function(offline=TRUE){
  hd <- htmltools::htmlDependency(
    name = "react",
    version = react_version(),
    src = system.file("www/react",package="reactR"),
    script = c("react.min.js", "react-dom.min.js")
  )

  if(!offline) {
    hd$src <- list(href="//unpkg.com")

    hd$script <- c(
      "react/umd/react.production.min.js",
      "react-dom/umd/react-dom.production.min.js"
    )
  }

  hd
}
