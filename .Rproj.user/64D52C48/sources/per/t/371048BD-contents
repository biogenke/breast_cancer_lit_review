library(devtools)
install_github("elizagrames/litsearchr", ref="main")
library(litsearchr)

library(dplyr)
library(ggplot2)
library(ggraph)
library(igraph)
library(readr)


naive_results <- import_results(file = "pubmed-breastcanc-set.nbib")
nrow(naive_results)
naive_results[1:3, ]
colnames(naive_results)
naive_results[1, "title"]
naive_results$keywords[[2]]

sum(sapply(naive_results$keywords, function(x) {
  if (is.null(x)) return(0)
  sum(is.na(x))
}))

keywords <- extract_terms(keywords = naive_results$keywords, method = "tagged")

extract_terms(text = naive_results$title, method = "fakerake", min_freq = 3, min_n = 2)

br_lit_search_stop_words <- read_lines("br_list_search_stop_words.txt")
all_stop_words <- c(get_stopwords("English"), br_lit_search_stop_words)

keywords_filtered <- extract_terms(keywords = naive_results$keywords, method = "tagged", stopwords = all_stop_words)

title_terms <- extract_terms(text = naive_results$title, method = "fakerake", min_freq = 3, min_n = 2, stopwords = all_stop_words)

search_terms <- unique(c(keywords, title_terms))

docs <- paste(naive_results$title, naive_results$abstract)

dfm <- create_dfm(elements = docs, features = search_terms)
dfm[1:5, 1:7]
search_matrix <- create_network(dfm, min_studies = 3)
ggraph(search_matrix, layout = "stress") +
  coord_fixed() +
  expand_limits(x=c(-3, 3)) +
  geom_edge_link(aes(alpha=weight)) +
  geom_node_point(shape="circle filled", fill="white") +
  geom_node_text(aes(label=name), hjust="outward", check_overlap=TRUE) +
  guides(edge_alpha=FALSE)
