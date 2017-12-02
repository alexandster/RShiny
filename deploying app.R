install.packages('devtools')

devtools::install_github('rstudio/rsconnect')

rsconnect::setAccountInfo(name='aloignon', token='ED175369F756A84DC94361E130D3F9C8', secret='SECRET')

library(rsconnect)

rsconnect::deployApp('F:/Project Mosaic/Shiny/00_Workshop/Workshop Materials/BaseballApp.4.1',appName = "BaseballApp")