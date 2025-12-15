
# copy assets
fs::dir_create("docs/figures")
fs::file_copy("figures/icons_all.png", "docs/figures/icons_all.png")
fs::file_copy("figures/favicon.png", "docs/figures/favicon.png")

# Front page
quarto::quarto_render()


# debug version
withr::with_envvar(new = c("QUARTO_PROFILE" = "debug"), {
  quarto::quarto_preview(".")  # Create basic.html
})


