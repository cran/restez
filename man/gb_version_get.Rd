% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gb-get-tools.R
\name{gb_version_get}
\alias{gb_version_get}
\title{Get version from GenBank}
\usage{
gb_version_get(id)
}
\arguments{
\item{id}{character, sequence accession ID(s)}
}
\value{
named vector of versions, if no results found NULL
}
\description{
Return the accession version
for an accession ID.
}
\examples{
library(restez)
restez_path_set(filepath = tempdir())
demo_db_create(n = 5)
(ver <- gb_version_get(id = 'demo_1'))
(vers <- gb_version_get(id = c('demo_1', 'demo_2')))


# delete demo after example
db_delete(everything = TRUE)


}
\seealso{
\code{\link[=ncbi_acc_get]{ncbi_acc_get()}}

Other get: 
\code{\link{gb_definition_get}()},
\code{\link{gb_fasta_get}()},
\code{\link{gb_organism_get}()},
\code{\link{gb_record_get}()},
\code{\link{gb_sequence_get}()}
}
\concept{get}
