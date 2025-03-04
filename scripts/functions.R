temperature_f <- 32

fahr_to_kelvin <- function (temperature_f) {
  kelvin <- (temperature_f - 32) * (5/9) + 373.15 
  return(kelvin)
}

kelvin

kelvin_to_celsius <- function (temperature_k) {
  celsius <- (temperature_k - 273.5) 
  return(celsius)
}

kelvin

# Adding comment just to see the page