#' TwitterCloud

#'

#' Package allows user to search twitter for any given term and then creates a wordcloud of words commonly used with the search term.

#'

#' Pulls data from twitter then uses the wordcloud package to create a wordcloud.

#'

#' @author Zack Brown

#'

#' @param x The word you want to search.

#'

#' @param y The number of tweets you want to pull.

#' @return A wordcloud

#'

#' @examples

#' Potato


#' @export

TwitterCloud <- function(x,y) {

  Search_data = search_tweets(x, n = y, include_rts = False, lang="en") %>%

    select(text) %>%

    ##selects the text of the tweets if user wants to view raw data.

    gsub("https\\S*", "", Search_data$text) %>%

    #Cleans text to remove punctuation, whitespace, etc for wordcloud creation.

     gsub("@\\S*", "", Search_data$text) %>%

     #Cleans text to remove punctuation, whitespace, etc for wordcloud creation.

  gsub("amp", "", Search_data$text) %>%

    #Cleans text to remove punctuation, whitespace, etc for wordcloud creation.

  gsub("[\r\n]", "", Search_data$text) %>%

    #Cleans text to remove punctuation, whitespace, etc for wordcloud creation.

  gsub("[[:punct:]]", "", Search_data$text) %>%

    #Cleans text to remove punctuation, whitespace, etc for wordcloud creation.


    wordcloud(Search_data$text, min.freq = 1, max.words = 100, random.order = FALSE)



  assign("searchdata", Search_data, envir = .GlobalEnv)


  ##prints object into console
}


