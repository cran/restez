% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/db-get-tools.R
\name{list_db_ids}
\alias{list_db_ids}
\title{List database IDs}
\usage{
list_db_ids(db = "nucleotide", n = 100)
}
\arguments{
\item{db}{character, database name}

\item{n}{Maximum number of IDs to return, if NULL returns all}
}
\value{
vector of characters
}
\description{
Return a vector of all IDs in
a database.
}
\details{
Warning: can return very large vectors
for large databases.
}
\examples{
library(restez)
restez_path_set(filepath = tempdir())
demo_db_create(n = 5)
# Warning: not recommended for real databases
#  with potentially millions of IDs
all_ids <- list_db_ids()


# What shall we do with these IDs?
# ... how about make a mock fasta file
seqs <- gb_sequence_get(id = all_ids)
defs <- gb_definition_get(id = all_ids)
# paste together
fasta_seqs <- paste0('>', defs, '\n', seqs)
fasta_file <- paste0(fasta_seqs, collapse = '\n')
cat(fasta_file)


# delete after example
db_delete(everything = TRUE)
}
\seealso{
Other database: 
\code{\link{count_db_ids}()},
\code{\link{db_create}()},
\code{\link{db_delete}()},
\code{\link{db_download}()},
\code{\link{demo_db_create}()},
\code{\link{is_in_db}()}
}
\concept{database}
