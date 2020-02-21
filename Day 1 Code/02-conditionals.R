k_c <- function(k_temp) {
  return(k_temp - 273.15)
}

f_k <- function(f_temp) {
  converted <- ((f_temp - 32)) * (5/9) + 273.15
  return(converted)
}

f_c <- function(f_temp) {
  k_temp <- f_k(f_temp)
  temp_c <- k_c(k_temp)
  return(temp_c)
}

# Session -> Restar R (everything is reset to its default state)

# Attempt to remove environment
rm(list = ls())

k_c <- function(k_temp) {
  if(k_temp < 0) {
    warning("You passed in a negative Kelvin number")
    return(NA)
  }
  return(k_temp - 273.15)
}

k_c(-100)

k_c <- function(k_temp) {
  if(k_temp < 0) {
    warning("You passed in a negative Kelvin number")
    return(NA)
  } else {
  return(k_temp - 273.15)
  }
}

k_c <- function(k_temp) {
  if (is.na(k_temp)) {
    return(NA)
  }
  if (k_temp < 0) {
    warning("You passed in a negative Kelvin number")
    return(NA)
  } else {
    return(k_temp - 273.15)
  }
}

k_c(NA)
k_c(1:10)

if (TRUE) {
  print("hello")
}

if (all(c(TRUE, TRUE, TRUE))) {
  print("hello")
}

if (all(c(TRUE, TRUE, FALSE))) {
  print("hello")
}

c(TRUE, FALSE) == c(TRUE, FALSE)

identical(c(TRUE, FALSE), c(TRUE, FALSE))

#0 is 0.0000000 but if you say 0L you are telling R 0 is an integer
identical(0, 0L)

# & |
# & ||

c(TRUE, FALSE) & c(TRUE, FALSE)
c(TRUE, FALSE) && c(TRUE, FALSE)

c(TRUE, FALSE) | c(TRUE, FALSE)
c(TRUE, FALSE) || c(TRUE, FALSE)

# write a function
# takes a single value
# divisible 3: "fizz"
# divisible 5: "buzz"
# divisible 3 AND 5: "fizzbuzz"

fizzbuzz(6) # "fizz"
fizzbuzz(15) # "fizzbuzz"

#How to know if that number is divisible for that number (if it divisible = 0)
10 %% 2
10 %% 3
15 %% 5

fizzbuzz <- function(x) {
  if ((x %% 3) == 0 & (x %% 5) == 0) {
    return("fizzbuzz")
  } else if ((x %% 3) == 0) {
    return("fizz")
  } else if ((x %% 5) == 0) {
    return("buzz")
  } else {
    return(NA)
  }
}
    
fizzbuzz(6) # "fizz"
fizzbuzz(5) # "buzz"
fizzbuzz(20) # "buzz"
fizzbuzz(15) # "fizzbuzz"

fizzbuzz(7) # NA

fizzbuzz <- function(x) {
  if ((x %% 3) == 0 & (x %% 5) == 0) {
    return("fizzbuzz")
  } else if ((x %% 3) == 0) {
    return("fizz")
  } else if ((x %% 5) == 0) {
    return("buzz")
  } else {
    return(as.character(x))
  }
}

fizzbuzz(6) # "fizz"
fizzbuzz(5) # "buzz"
fizzbuzz(20) # "buzz"
fizzbuzz(15) # "fizzbuzz"

fizzbuzz(7) # 7

#dplyr:: so you don't have to do library(dplyr) and just say function you want to use. In this case case_when
fizzbuzz_vec <- function(x) {
 dplyr::case_when(
   (x %% 3) == 0 & (x %% 5) == 0 ~ "fizzbuzz",
   (x %% 3) == 0 ~ "fizz",
   (x %% 5) == 0 ~ "buzz",
   TRUE ~ as.character(x)
 )
}

fizzbuzz_vec(6) # "fizz"
fizzbuzz_vec(5) # "buzz"
fizzbuzz_vec(20) # "buzz"
fizzbuzz_vec(15) # "fizzbuzz"

fizzbuzz_vec(7) # 7
fizzbuzz_vec(5:12)

my_expr <- y ~ 3 + 3
my_expr[[1]]
my_expr[[2]]
my_expr[[3]]

my_thing <- c("hello", "you")
my_thing[[1]]
my_thing[[2]]

calc_op <- function(x, y, op) {
  switch(op,
         plus = x + y,
         minus = x - y,
         times = x * y,
         divide = x / y,
         stop("Unknown op!")
         )
}

calc_op(10, 100, "divide")

describe_temp <- function(temp) {
  if (temp <= 0) {
    "frezzing"
  } else if (temp <= 10) {
    "cold"
  } else if (temp <= 20) {
    "cool"
  } else if (temp <= 30) {
    "warm"
  } else {
    "hot"
  }
}


values <- 10

cut(values,
    c(-Inf, 0, 10, 20, 30, Inf),
    labels = c("freezing", "cold", "cool", "warm", "hot"),
    right = TRUE)

cut(values,
    c(-Inf, 0, 10, 20, 30, Inf),
    #labels = c("freezing", "cold", "cool", "warm", "hot"),
    right = TRUE)

