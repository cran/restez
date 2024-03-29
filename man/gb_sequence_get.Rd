% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gb-get-tools.R
\name{gb_sequence_get}
\alias{gb_sequence_get}
\title{Get sequence from GenBank}
\usage{
gb_sequence_get(id, dnabin = FALSE)
}
\arguments{
\item{id}{character, sequence accession ID(s)}

\item{dnabin}{Logical vector of length 1; should the sequences
be returned using the bit-level coding scheme of the ape package?
Default FALSE.}
}
\value{
named vector of sequences, if no results found NULL
}
\description{
Return the sequence(s) for a record(s)
from the accession ID(s).
}
\details{
For more information about the \code{dnabin} format, see \code{\link[ape:DNAbin]{ape::DNAbin()}}.
}
\examples{
library(restez)
restez_path_set(filepath = tempdir())
demo_db_create(n = 5)
(seq <- gb_sequence_get(id = 'demo_1'))
(seqs <- gb_sequence_get(id = c('demo_1', 'demo_2')))
(fasta_dnabin <- gb_sequence_get(id = 'demo_1', dnabin = TRUE))

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
\code{\link{gb_version_get}()}
}
\concept{get}
