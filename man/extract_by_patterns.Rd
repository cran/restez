% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract-tools.R
\name{extract_by_patterns}
\alias{extract_by_patterns}
\title{Extract by keyword}
\usage{
extract_by_patterns(record, start_pattern, end_pattern = "\\n")
}
\arguments{
\item{record}{GenBank record in text format, character}

\item{start_pattern}{REGEX pattern indicating the point to
start extraction, character}

\item{end_pattern}{REGEX pattern indicating the point to
stop extraction, character}
}
\value{
character or NULL
}
\description{
Search through GenBank record for a keyword and
return text up to the end_pattern.
}
\details{
The start_pattern should be any of the capitalized elements
in a GenBank record (e.g. LOCUS, DESCRIPTION, ACCESSION).
The end_pattern depends on how much of the selected element
a user wants returned. By default, the extraction will stop
at the next newline.
If keyword or end pattern not found, returns NULL.
}
\seealso{
Other private: 
\code{\link{add_rcrd_log}()},
\code{\link{cat_line}()},
\code{\link{char}()},
\code{\link{check_connection}()},
\code{\link{cleanup}()},
\code{\link{connected}()},
\code{\link{connection_get}()},
\code{\link{db_download_intern}()},
\code{\link{db_sqlngths_get}()},
\code{\link{db_sqlngths_log}()},
\code{\link{dir_size}()},
\code{\link{dwnld_path_get}()},
\code{\link{dwnld_rcrd_log}()},
\code{\link{entrez_fasta_get}()},
\code{\link{entrez_gb_get}()},
\code{\link{extract_accession}()},
\code{\link{extract_clean_sequence}()},
\code{\link{extract_definition}()},
\code{\link{extract_features}()},
\code{\link{extract_inforecpart}()},
\code{\link{extract_keywords}()},
\code{\link{extract_locus}()},
\code{\link{extract_organism}()},
\code{\link{extract_seqrecpart}()},
\code{\link{extract_sequence}()},
\code{\link{extract_version}()},
\code{\link{file_download}()},
\code{\link{filename_log}()},
\code{\link{flatfile_read}()},
\code{\link{gb_build}()},
\code{\link{gb_df_create}()},
\code{\link{gb_df_generate}()},
\code{\link{gb_sql_add}()},
\code{\link{gb_sql_query}()},
\code{\link{gbrelease_check}()},
\code{\link{gbrelease_get}()},
\code{\link{gbrelease_log}()},
\code{\link{has_data}()},
\code{\link{identify_downloadable_files}()},
\code{\link{last_add_get}()},
\code{\link{last_dwnld_get}()},
\code{\link{last_entry_get}()},
\code{\link{latest_genbank_release_notes}()},
\code{\link{latest_genbank_release}()},
\code{\link{message_missing}()},
\code{\link{mock_def}()},
\code{\link{mock_gb_df_generate}()},
\code{\link{mock_org}()},
\code{\link{mock_rec}()},
\code{\link{mock_seq}()},
\code{\link{predict_datasizes}()},
\code{\link{readme_log}()},
\code{\link{restez_connect}()},
\code{\link{restez_disconnect}()},
\code{\link{restez_path_check}()},
\code{\link{restez_rl}()},
\code{\link{search_gz}()},
\code{\link{seshinfo_log}()},
\code{\link{setup}()},
\code{\link{slctn_get}()},
\code{\link{slctn_log}()},
\code{\link{sql_path_get}()},
\code{\link{status_class}()},
\code{\link{stat}()},
\code{\link{testdatadir_get}()}
}
\concept{private}
