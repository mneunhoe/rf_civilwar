################################################################
# Install and load Packages needed to run 
# NeunhoefferSternberg_code.Rmd
################################################################

p_needed <- c("randomForest", "caret","ROCR", "pROC", 
              "stepPlr", "doMC", "separationplot") 

packages <- rownames(installed.packages())
p_to_install <- p_needed[!(p_needed %in% packages)]
if (length(p_to_install) > 0) {
  install.packages(p_to_install)
}
print(sapply(p_needed, require, character.only = TRUE))
