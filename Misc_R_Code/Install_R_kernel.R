
# https://richpauloo.github.io/2018-05-16-Installing-the-R-kernel-in-Jupyter-Lab/
# Then run R from within Anaconda Prompt in Admin mode with R.exe.
# Run the following commands successively from the same prompt
install.packages("devtools", type = "win.binary")
#install.packages("devtools")
install.packages('IRkernel')
IRkernel::installspec()
IRkernel::installspec(user = FALSE)