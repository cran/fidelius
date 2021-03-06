% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/charm.R
\name{charm}
\alias{charm}
\title{Password protect a document}
\usage{
charm(
  input,
  password,
  hint = NULL,
  output = NULL,
  style = stylize(),
  bundle = FALSE,
  minified = TRUE,
  ...
)
}
\arguments{
\item{input}{Path to an R Markdown or HTML file.}

\item{password}{Private password to unlock file. If not provided, you will
be asked to supply a password by a prompt if you are working from an
interactive session.}

\item{hint}{Optional public password hint.}

\item{output}{Override the name of the output file.}

\item{style}{Object returned from \code{stylize()}.}

\item{bundle}{Logical. Should all of the decryption machinery and
dependencies be bundled into the HTML document? Default is \code{FALSE}.}

\item{minified}{Logical. Should minified versions of JavaScript dependencies
be included? Default is \code{TRUE}.}

\item{...}{Arguments passed on to \code{rmarkdown::render()}.}
}
\value{
\code{input}, invisibly.
}
\description{
Encrypt and password protect an HTML document.
}
\note{
Using \code{bundle = TRUE} only applies to bundling the
decryption machinery and dependencies for the document generated
by \code{charm()}. It is still the users responsibility to decide on whether
\code{input} is self-contained by passing \code{self_contained = TRUE} to
\code{rmarkdown::render()} using \code{...}, or by specifying
\code{self_contained: true} in the YAML header of \code{input}.
}
\examples{
\dontrun{
charm("input.Rmd")

charm("input.Rmd", password = "pw1234!")
}

}
