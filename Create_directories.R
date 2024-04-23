# Function to safely create directories
make_dir <- function(path) {
  if (!dir.exists(path)) {
    dir.create(path, recursive = TRUE)
    message("Created directory: ", path)
  } else {
    message("Directory already exists: ", path)
  }
}

# Base directory for the project
base_dir <- "KenyaNationalCoralReefDataInventory"

# Internal directories and subdirectories
internal_dir <- file.path(base_dir, "1_Internal")
make_dir(internal_dir)
make_dir(file.path(internal_dir, "1_Raw"))
make_dir(file.path(internal_dir, "2_Pre-processed"))
make_dir(file.path(internal_dir, "3_Cleaned"))
make_dir(file.path(internal_dir, "4_Internal Geo-File"))
make_dir(file.path(internal_dir, "5_Internal Verified datasets"))

# External directories and subdirectories
external_dir <- file.path(base_dir, "2_External")
make_dir(external_dir)
make_dir(file.path(external_dir, "1_Raw"))
make_dir(file.path(external_dir, "2_Pre-processed"))
make_dir(file.path(external_dir, "3_Cleaned"))
make_dir(file.path(external_dir, "4_External Geo-file"))
make_dir(file.path(external_dir, "5_External Verified datasets"))

# National directory and subdirectories
national_dir <- file.path(base_dir, "3_National")
make_dir(national_dir)
make_dir(file.path(national_dir, "1_National verified data"))
make_dir(file.path(national_dir, "2_National Verified sites"))

# Analysis directory and subdirectories
analysis_dir <- file.path(base_dir, "4_Analysis")
make_dir(analysis_dir)
make_dir(file.path(analysis_dir, "1_Monitoring effort"))
make_dir(file.path(analysis_dir, "2_National processes"))
make_dir(file.path(analysis_dir, "3_National reporting"))
make_dir(file.path(analysis_dir, "4_National xx"))

#df
