
# Step1

# 1\_extract\_outcomes\_perform\_analysis\_combined

This step extracts instrumnets from already stored data in
`002_adiposity_metabolites/data`, extracts outcome data from the MR Base
database, runs MR analysis and sensitivity analysis and saves plots and
all data frames created in the process.

The scripts in `1_extract_outcomes_perform_analysis_combined` are the
full script that will do the whole complete analysis in one go. That is,
they will extract instruments and outcome data, and then perform all
analysis.

However, MR Base doesn’t work well with large scale extraction requests
so we spilt this up into two steps:

 

# 1\_extract\_outcomes\_perform\_analysis\_seperately

To overcome the problem with requesting large amounts of data from the
MR Base server we spilt the process into two sections:

1.  Extract outcome data
2.  Everything else

The scripts in `1_extract_outcomes_perform_analysis_seperately` will do
the combined process in two steps in order to avoid errors arising in
the extraction of outcome data from the MR Base server. I recommend
using this approach to ensure the process works properly.

  - `extract_outcome.R` will extract all of the outcome data for all
    exposure instruments in one go, this must be run locally (i did this
    in R Studio to monitor error messages easily).
  - `1_*.R` will perform all of the subsequent analysis in one go.

 

# 2\_data\_prep

The next step is to prepare the MR results for further work such as
visualising.

  - `1_data_prep.R` will join all of the output data frames for `mr()`
    and `hamronise_data()` created in the previous step.

We combine the MR results data frame and the harmonize data results data
frame together as when you perform an MR using teh `TwoSampleMR` package
you lose some columns with usefu information. These columns can be taken
from the harmonize data results data frame however. We save out a final
file `001_mr_PHENOTYPE_OUTCOME.txt` which we can then use in all
following work.
