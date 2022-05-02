exemplos <- list.files(pattern = "[0-9]{1}.*.qmd")
for(ex in exemplos){
  output <- paste0(fs::path_ext_remove(ex), ".ipynb")
  system(paste("quarto convert", 
    ex,
    "-o",
    fs::path("notebooks", output)
  ))
}