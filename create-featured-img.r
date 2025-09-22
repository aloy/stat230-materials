# Create a screenshot of the featured post for sharing on webpage
deck <- "03-slr-prediction"
quarto::quarto_render(paste0("slides/", deck, ".qmd"))
webshot2::webshot(
  url = paste0("docs/slides/", deck, ".html"),
  file = paste0("slides/featured/", deck, ".png"),
  vwidth = 1920,
  vheight = 1080
)
# unlink(paste0("docs/slides/", deck, ".html"))
