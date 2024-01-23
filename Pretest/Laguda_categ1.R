library(rvest)
library(stringr)

url <- "https://www.amazon.com/s?i=specialty-aps&bbn=16225007011&rh=n%3A1625007011%2Cn%3A3011391011&ref=navem__nav_desktop_sa_intl_laptop_accessories_0_2_6_7"
webpage <- read_html(url)


product_description <- webpage %>%
  html_nodes(".a-size-base-plus.a-color-base.a-text-normal") %>%
  html_text()

num_reviews <- webpage %>%
  html_nodes(".a-size-base.s-underline-text") %>%
  html_text()


review_stars <- webpage %>%
  html_nodes("[data-hook='acr-average-stars-rating-text']") %>%
  html_text()


price <- webpage %>%
  html_nodes(".a-price .a-offscreen") %>%
  html_text()


product_description <- product_description[1:min(length(product_description), length(price), length(num_reviews), length(review_stars))]
num_reviews <- num_reviews[1:min(length(product_description), length(price), length(num_reviews), length(review_stars))]
review_stars <- review_stars[1:min(length(product_description), length(price), length(num_reviews), length(review_stars))]
price <- price[1:min(length(product_description), length(price), length(num_reviews), length(review_stars))]


cat("Product Description:", paste(product_description, collapse = ", "), "\n")
cat("Number of Reviews:", paste(num_reviews, collapse = ", "), "\n")
cat("Review Stars:", paste(review_stars, collapse = ", "), "\n")
cat("Price:", paste(price, collapse = ", "), "\n")

product1 <- data.frame (
  Category = "Laptop Accessories",
  BrandDescription = product_description,
  Price = price,
  NumberOfReviews = num_reviews,
  ReviewStars = review_stars
)

product1



