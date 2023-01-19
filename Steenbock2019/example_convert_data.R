
library(GENEAread)
library(data.table)

# Function to compute summary statistics
my.summary <- function(x) {
  # Percentiles
  quants <- as.list(quantile(x, c(0.1, 0.25, 0.5, 0.75, 0.9), names = FALSE))
  names(quants) <- c("p10", "p25", "p50", "p75", "p90")
  
  # Lag one autocorrelation
  cov <- acf(x, lag.max = 1, plot = FALSE)$acf[2, , ]
  if (is.na(cov)) {
    cov <- 0
  }
  
  # The rest and return
  c(list(mean = mean(x), sd = sd(x), min = min(x), max = max(x), cov = cov), 
    quants)
}

# Function to convert GeneActiv binary files to R format
convert_bin <- function(in_file, out_file) {
  # Read binary file
  dat <- read.bin(in_file, Use.Timestamps = FALSE, do.temp = FALSE, do.volt = FALSE)
  dt <- as.data.table(dat$data.out)
  
  # Compute summary statistics over time interval
  interval <- 30
  dt[, light := NULL]
  dt[, button := NULL]
  colnames(dt) <- c("time", "X", "Y", "Z")
  dt[, time := time - min(time)]
  dt[, interval := floor(time / interval) + 1]
  dt[, interval_size := .N, by = interval]
  dt <- dt[interval_size > 1, ]
  dt[, interval_size := NULL]
  res <- dt[, as.list(unlist(lapply(.SD, my.summary))), by = interval, .SDcols = c('X', 'Y', 'Z')]
  
  # Save converted file
  saveRDS(res, out_file)
  NULL
}

# Run conversion
bin_file <- "path/to/bin/file.bin"
rds_file <- "path/to/output/file.Rds"
convert_bin(in_file = bin_file, out_file = rds_file)

