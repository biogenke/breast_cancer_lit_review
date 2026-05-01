

##-------------------------------------------------------------------------------------------------

# Download and clean naive search results from January 1st 2015 to 2026
# Ken is downloading from 1946 to 2014 December 31st
# Combine this into a   .nbib file to share with the team

# NOTE: The script is Redundant so that I can look into each file separately.

# Load required package
library(litsearchr)
library(dplyr)
library(revtools) # To export merged .nbib file

# Read in each year's file 

naive_results_1946 <- import_results(file="nbib_files/1946.nbib")
naive_results_1947 <- import_results(file="nbib_files/1947.nbib")
naive_results_1948_1958 <- import_results(file="nbib_files/1948-1958-F-pubmed-breastcanc-set.nbib") 
naive_results_1959 <- import_results(file="nbib_files/1959.nbib")
naive_results_1963 <- import_results(file="nbib_files/1963.nbib")
naive_results_1964 <- import_results(file="nbib_files/1964.nbib")
naive_results_1966 <- import_results(file="nbib_files/1966.nbib")
naive_results_1967 <- import_results(file="nbib_files/1967.nbib")
naive_results_1968 <- import_results(file="nbib_files/1968.nbib")
naive_results_1969 <- import_results(file="nbib_files/1969.nbib")
naive_results_1970 <- import_results(file="nbib_files/1970.nbib")
naive_results_1971 <- import_results(file="nbib_files/1971.nbib")
naive_results_1972 <- import_results(file="nbib_files/1972.nbib")
naive_results_1973 <- import_results(file="nbib_files/1973.nbib")
naive_results_1974 <- import_results(file="nbib_files/1974.nbib")
naive_results_1975 <- import_results(file="nbib_files/1975.nbib")
naive_results_1976 <- import_results(file="nbib_files/1976.nbib")
naive_results_1977 <- import_results(file="nbib_files/1977.nbib")
naive_results_1978 <- import_results(file="nbib_files/1978.nbib")
naive_results_1979 <- import_results(file="nbib_files/1979.nbib")
naive_results_1980 <- import_results(file="nbib_files/1980.nbib")
naive_results_1981 <- import_results(file="nbib_files/1981.nbib")
naive_results_1982_1990 <- import_results(file="nbib_files/1982-1990.nbib")
naive_results_1991_1998 <- import_results(file="nbib_files/1991-1998.nbib")
naive_results_1999 <- import_results(file="nbib_files/1999.nbib")
naive_results_2000 <- import_results(file="nbib_files/2000.nbib")
naive_results_2001 <- import_results(file="nbib_files/2001.nbib")
naive_results_2002 <- import_results(file="nbib_files/2002.nbib")
naive_results_2003 <- import_results(file="nbib_files/2003.nbib")
naive_results_2004 <- import_results(file="nbib_files/2004.nbib")
naive_results_2005 <- import_results(file="nbib_files/2005.nbib")
naive_results_2006 <- import_results(file="nbib_files/2006.nbib")
naive_results_2007 <- import_results(file="nbib_files/2007.nbib")
naive_results_2008 <- import_results(file="nbib_files/2008.nbib")
naive_results_2009 <- import_results(file="nbib_files/2009.nbib")
naive_results_2010 <- import_results(file="nbib_files/2010.nbib")
naive_results_2011 <- import_results(file="nbib_files/2011.nbib")
naive_results_2012 <- import_results(file="nbib_files/2012.nbib")
naive_results_2013 <- import_results(file="nbib_files/2013.nbib")
naive_results_2014 <- import_results(file="nbib_files/2014-F-pubmed-breastcanc-set.nbib")
naive_results_2015 <- import_results(file="nbib_files/2015-F-pubmed-breastcanc-set.nbib")
naive_results_2016 <- import_results(file="nbib_files/2016-F-pubmed-breastcanc-set.nbib")
naive_results_2017 <- import_results(file="nbib_files/2017-F-pubmed-breastcanc-set.nbib")
naive_results_2018 <- import_results(file="nbib_files/2018-F-pubmed-breastcanc-set.nbib")
naive_results_2019 <- import_results(file="nbib_files/2019-F-pubmed-breastcanc-set.nbib")
naive_results_2020 <- import_results(file="nbib_files/2020-F-pubmed-breastcanc-set.nbib")
naive_results_2021 <- import_results(file="nbib_files/2021-F-pubmed-breastcanc-set.nbib")
naive_results_2022 <- import_results(file="nbib_files/2022-F-pubmed-breastcanc-set.nbib")
naive_results_2023 <- import_results(file="nbib_files/2023-F-pubmed-breastcanc-set.nbib")
naive_results_2024 <- import_results(file="nbib_files/2024-F-pubmed-breastcanc-set.nbib")
naive_results_2025 <- import_results(file="nbib_files/2025-F-pubmed-breastcanc-set.nbib")
naive_results_2026 <- import_results(file="nbib_files/2026_F-pubmed-breastcanc-set.nbib")


# For articles without abstract or Keywords - Use this code to fix that whenever necessary
#naive_results_2006$keywords <- NA

# Get relevant variables
naive_results_1946_reduced  <- naive_results_1946[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1947_reduced  <- naive_results_1947[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1948_1958_reduced  <- naive_results_1948_1958[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1959_reduced  <- naive_results_1948_1958[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1963_reduced  <- naive_results_1963[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1964_reduced  <- naive_results_1964[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1966_reduced  <- naive_results_1966[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1967_reduced  <- naive_results_1967[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1968_reduced  <- naive_results_1968[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1969_reduced  <- naive_results_1969[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1970_reduced  <- naive_results_1970[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1971_reduced  <- naive_results_1971[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1972_reduced  <- naive_results_1972[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1973_reduced  <- naive_results_1973[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1974_reduced  <- naive_results_1974[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_1975_reduced  <- naive_results_1975[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] # This file has has abstract and abstract-other : Ask Prof how to harmonize though its just one article
naive_results_1976_reduced  <- naive_results_1976[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] # This file has has abstract and abstract-other : Ask Prof how to harmonize though its just one article
naive_results_1977_reduced  <- naive_results_1977[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_1978_reduced  <- naive_results_1978[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_1979_reduced  <- naive_results_1979[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_1980_reduced  <- naive_results_1980[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_1981_reduced  <- naive_results_1981[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_1982_1990_reduced  <- naive_results_1982_1990[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_1991_1998_reduced  <- naive_results_1991_1998[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_1999_reduced  <- naive_results_1999[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2000_reduced  <- naive_results_2000[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2001_reduced  <- naive_results_2001[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2002_reduced  <- naive_results_2002[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2003_reduced  <- naive_results_2003[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2004_reduced  <- naive_results_2004[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2005_reduced  <- naive_results_2005[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2006_reduced  <- naive_results_2006[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2007_reduced  <- naive_results_2007[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2008_reduced  <- naive_results_2008[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2009_reduced  <- naive_results_2009[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2010_reduced  <- naive_results_2010[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2011_reduced  <- naive_results_2011[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2012_reduced  <- naive_results_2012[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2013_reduced  <- naive_results_2013[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2014_reduced  <- naive_results_2014[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")] 
naive_results_2015_reduced  <- naive_results_2015[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2016_reduced  <- naive_results_2016[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2017_reduced  <- naive_results_2017[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2018_reduced  <- naive_results_2018[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2019_reduced  <- naive_results_2019[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2020_reduced  <- naive_results_2020[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2021_reduced  <- naive_results_2021[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2022_reduced  <- naive_results_2022[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2023_reduced  <- naive_results_2023[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2024_reduced  <- naive_results_2024[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2025_reduced  <- naive_results_2025[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]
naive_results_2026_reduced  <- naive_results_2026[, c("author", "author_full", "title", "journal", "volume", "issue", "pages", "abstract", "keywords", "date_published")]


# Combine the files into one dataframe # Make sure the total number is adding up
merged_naive_search <- bind_rows(naive_results_1946_reduced, naive_results_1947_reduced, naive_results_1948_1958_reduced, naive_results_1959_reduced, naive_results_1963_reduced,
                                 naive_results_1964_reduced, naive_results_1966_reduced, naive_results_1967_reduced, naive_results_1968_reduced, naive_results_1969_reduced,
                                 naive_results_1970_reduced, naive_results_1971_reduced, naive_results_1972_reduced, naive_results_1973_reduced, naive_results_1974_reduced,
                                 naive_results_1975_reduced, naive_results_1976_reduced, naive_results_1977_reduced, naive_results_1978_reduced, naive_results_1979_reduced,
                                 naive_results_1980_reduced, naive_results_1981_reduced, naive_results_1982_1990_reduced, naive_results_1991_1998_reduced, naive_results_1999_reduced,
                                 naive_results_2000_reduced, naive_results_2001_reduced, naive_results_2002_reduced, naive_results_2003_reduced, naive_results_2004_reduced,
                                 naive_results_2005_reduced, naive_results_2006_reduced, naive_results_2007_reduced, naive_results_2008_reduced, naive_results_2009_reduced,
                                 naive_results_2010_reduced, naive_results_2011_reduced, naive_results_2012_reduced, naive_results_2013_reduced, naive_results_2014_reduced,
                                 naive_results_2015_reduced, naive_results_2016_reduced, naive_results_2017_reduced, naive_results_2018_reduced, naive_results_2019_reduced, 
                                 naive_results_2020_reduced, naive_results_2021_reduced, naive_results_2022_reduced, naive_results_2023_reduced, naive_results_2024_reduced, 
                                 naive_results_2025_reduced, naive_results_2026_reduced)


# Make an additional variable to concatenate (author, year, Journal and volume). -- Have this as an additional last column
merged_naive_search$author_year_journal_vol <- paste(
  merged_naive_search$author,
  merged_naive_search$date_published,
  merged_naive_search$journal,
  merged_naive_search$volume,
  sep = ", "
)


# Save the merged_naive_search File to csv to share.
write.csv(merged_naive_search, file = 'Naive_search_results/Final_Naive_search_results.csv')

