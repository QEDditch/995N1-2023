library(ngramr)
library(ggplot2)
googlebook_data <- ngram(c("science", "technology", "innovation", "magic"),
                         smoothing = 0, year_start = 1900)
g <- ggplot(googlebook_data,
            aes(x=Year, y = Frequency, colour = Phrase)) +
    geom_line()