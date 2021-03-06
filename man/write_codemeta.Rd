% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write_codemeta.R
\name{write_codemeta}
\alias{write_codemeta}
\title{write_codemeta}
\usage{
write_codemeta(pkg = ".", path = "codemeta.json", root = ".", id = NULL,
  force_update = getOption("codemeta_force_update", TRUE), ...)
}
\arguments{
\item{pkg}{package path to package root, or package name, or
description file (character), or a codemeta object (list)}

\item{path}{file name of the output, leave at default "codemeta.json"}

\item{root}{if pkg is a codemeta object, optionally give the path
to package root. Default guess is current dir.}

\item{id}{identifier for the package, e.g. a DOI (or other resolvable URL)}

\item{force_update}{Update guessed fields even if they are defined in an existing codemeta.json file}

\item{...}{additional arguments to \code{\link{write_json}}}
}
\value{
writes out the codemeta.json file
}
\description{
write out a codemeta.json file for a given package.  This function
is basically a wrapper around create_codemeta() to both create the
codemeta object and write it out to a JSON-LD-formatted file in one command.
It can also be used simply to write out to JSON-LD any existing object
created with create_codemeta().
}
\details{
If pkg is a codemeta object, the function will attempt to
 update any fields it can guess (i.e. from the DESRIPTION file),
 overwriting any existing data in that block. In this case, the package
 root directory should be the current working directory.
}
\examples{
write_codemeta("codemeta")
}
