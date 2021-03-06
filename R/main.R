#' Access BNM API
#'
#' This function allows you to obtain data from the BNM API.
#' @param path Specifies the API path per https://api.bnm.gov.my/
#' @param ... Additional arguments to httr::GET()
#' @examples
#' bnm_api("/welcome")
#' @source https://api.bnm.gov.my/, https://cran.r-project.org/web/packages/httr/vignettes/api-packages.html
#'

bnm_api <- function(path, ...) {
  GET("https://api.bnm.gov.my",
      path = glue("public{path}"),
      ...,
      accept("application/vnd.BNM.API.v1+json"),
      user_agent('http://github.com/philip-khor/bnmr')) -> resp

  parsed <- fromJSON(content(resp, "text", encoding = "UTF-8"))

  if (http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  if (http_error(resp)) {
    stop(
      sprintf(
        "BNM API request failed [%s]\n%s\n<%s>",
        status_code(resp),
        parsed$message,
        parsed$documentation_url
      ),
      call. = FALSE
    )
  }

  structure(
    list(
      content = parsed,
      path = path,
      response = resp
    ),
    class = "bnm_api"
  )

}

#' Get BNM Data
#'
#' This function allows you to obtain data from the BNM API.
#' @param path Specifies the API path per https://api.bnm.gov.my/
#' @param ... Additional arguments to be passed to bnm_api
#' @keywords cats
#' @examples
#' get_bnm_data("/welcome")
#' @source https://api.bnm.gov.my/

get_bnm_data <- function(path, ...) {
  bnm_api(path, ...)[["content"]][["data"]]
}

# potentially print metadata when returning get_bnm_data?

