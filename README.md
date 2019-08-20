
# Mendelian randomization analysis of different measures of adiposity and metabolites

This repo provides scripts and details of the data required to perform a
Mendelian randomization (MR) analysis of different measures of adiposity
and metabolites. We use different measures of adiposity as exposures and
metabolites as outcomes.

 

#### Brief introduction to MR

MR is an analysis tool in which genetic variants, known as single
nucleotide polymorphisms (SNPs), act as instruments to proxy for
exposures of interest. Using SNPs to proxy for exposures, because of the
random allocation of alleles at conception, distributes confounders
evenly across the population leading to ‘un-biased’ causal estimates of
the effect of \(X\) (expsoure) on \(Y\) (outcome). MR is discussed at
length elsewhere: [Davey Smith & Ebrahim
(2003)](https://www.ncbi.nlm.nih.gov/pubmed/12689998), [Davey Smith &
Hemani (2014)](https://www.ncbi.nlm.nih.gov/pubmed/25064373), [Pierce &
Burgess (2013)](https://www.ncbi.nlm.nih.gov/pubmed/23863760).

 

#### Analysis platform

For this work, unless otherwise stated, we used
[MR-Base](http://www.mrbase.org/) to perform our analysis - specifically
we use the associated `TwoSampleMR` `R` pacakge. Full details of the
MR-Base platform can be found in the publictaion by [Hemani et
al. (2018)](https://elifesciences.org/articles/34408) but in brief:
MR-Base is a curated database of genome wide association study results
and associated applications that enable one to perform two-sample MR -
two-sample MR is where the SNPs for your exposure and outcome used in
the MR analysis come from two seperate samples.

 

## Data

#### Exposure data

*The different measures of adiposity used for this analysis are:*

**BMI**

- Yengo_941
    - SNPs are from [Yengo et
    al. (2018)](https://www.ncbi.nlm.nih.gov/pubmed/30124842) and can
    be downloaded from the [GIANT
    website](https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files).
    Data used for this analysis can be downloaded directly from this
    [link](https://portals.broadinstitute.org/collaboration/giant/images/c/c8/Meta-analysis_Locke_et_al%2BUKBiobank_2018_UPDATED.txt.gz).  
  - UK Biobank & GIANT consortium
  - European
  - n = 515509 - 795624
  - 941 SNPs at 5e-8 

- Yengo_646
    - SNPs are from [Yengo et
    al. (2018)](https://www.ncbi.nlm.nih.gov/pubmed/30124842) and can
    be downloaded from the [GIANT
    website](https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files).
    Data used for this analysis can be downloaded directly from this
    [link](https://portals.broadinstitute.org/collaboration/giant/images/c/c8/Meta-analysis_Locke_et_al%2BUKBiobank_2018_UPDATED.txt.gz).  
  - UK Biobank & GIANT consortium
  - European
  - n = 515509 - 795624
  - 646 SNPs at 1e-8

- Locke_77
    - SNPs are from [Locke et
    al. (2015)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4382211/) and can
    be downloaded from the [GIANT
    website](https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files).
    Data used for this analysis can be downloaded directly from this
    [link](https://portals.broadinstitute.org/collaboration/giant/images/1/15/SNP_gwas_mc_merge_nogc.tbl.uniq.gz).  
  - GIANT consortium
  - European
  - n = 
  - 77 SNPs at 5e-8

**WHR**

- Pulit_316
  - SNPs are from [Pulit et
    al. (2019)](https://www.ncbi.nlm.nih.gov/pubmed/30239722) and can
    be downloaded from the study
    [GitHub](https://github.com/lindgrengroup/fatdistnGWAS). Data used
    for this analysis can be downloaded directly from the [GitHub
    repository](https://github.com/lindgrengroup/fatdistnGWAS),
    navigating to
    ‘[SuppTable1](https://github.com/lindgrengroup/fatdistnGWAS/tree/master/SuppTable1)’
    and clicking
    ‘[whr.giant-ukbb.meta.1.merged.indexSnps.combined.parsed.txt](https://github.com/lindgrengroup/fatdistnGWAS/blob/master/SuppTable1/whr.giant-ukbb.meta.1.merged.indexSnps.combined.parsed.txt)’,
    or by opening this
    [link](https://github.com/lindgrengroup/fatdistnGWAS/raw/master/SuppTable1/whr.giant-ukbb.meta.1.merged.indexSnps.combined.parsed.txt).  
  - UK Biobank & GIANT consortium
  - European
  - n = 485486 - 697702
  - 316 SNPs at 5e-8
 
- Shungin_....
    - SNPs are from [Shungin et al. (2015)]() and can be downloaded from the [GIANT
    website](https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files).
    Data used for this analysis can be downloaded directly from this
    [link](https://portals.broadinstitute.org/collaboration/giant/images/5/54/GIANT_2015_WHR_COMBINED_EUR.txt.gz).  
  - GIANT consortium
  - European
  - n = 
  -  SNPs at 5e-8

  
**WHRadjBMI**

- Pulit_346
  - SNPs are from [Pulit et
      al. (2019)](https://www.ncbi.nlm.nih.gov/pubmed/30239722) and can
      be downloaded from the study
      [GitHub](https://github.com/lindgrengroup/fatdistnGWAS). Data used
      for this analysis can be downloaded directly from the [GitHub
      repository](https://github.com/lindgrengroup/fatdistnGWAS),
      navigating to
      ‘[SuppTable1](https://github.com/lindgrengroup/fatdistnGWAS/tree/master/SuppTable1)’
      and clicking
      ‘[whradjbmi.giant-ukbb.meta.1.merged.indexSnps.combined.parsed.txt](https://github.com/lindgrengroup/fatdistnGWAS/blob/master/SuppTable1/whradjbmi.giant-ukbb.meta.1.merged.indexSnps.combined.parsed.txt)’,
      or by opening this
      [link](https://github.com/lindgrengroup/fatdistnGWAS/raw/master/SuppTable1/whr.giant-ukbb.meta.1.merged.indexSnps.combined.parsed.txt).  
  - UK Biobank & GIANT consortium
  - European
  - n = 
  - 346 SNPs at 5e-8

- Shungin_....
    - SNPs are from [Shungin et al. (2015)]() and can be downloaded from the [GIANT
    website](https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files).
    Data used for this analysis can be downloaded directly from this
    [link](https://portals.broadinstitute.org/collaboration/giant/images/e/eb/GIANT_2015_WHRadjBMI_COMBINED_EUR.txt.gz).  
  - GIANT consortium
  - European
  - n = 
  -  SNPs at 5e-8

**BF**

- Lu_7
  - SNPs are from [Lu et
    al. (2016)](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4740398/)
    and can be downloaded from the [GWAS
    Catalog](https://www.ebi.ac.uk/gwas/studies/GCST003435). Data used
    for this analysis can be found in the Supplementary Material of the
    published article in [Supplementary
    Table 6](https://media.nature.com/original/nature-assets/ncomms/2016/160201/ncomms10495/extref/ncomms10495-s1.pdf).  
  - GIANT consortium
  - European
  - n = 60210 - 89287
  - 7 SNPs

- Hubel_76
  - SNPs are from [Hübel et
    al. (2019)](https://www.ncbi.nlm.nih.gov/pubmed/30593698) and can
    be downloaded from the [study
    website](http://www.topherhuebel.com/GWAS). Data used for this
    analysis can be downloaded directly from [Supplementary
    Table 5a](https://onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1002%2Fajmg.b.32709&file=ajmgb32709-sup-0002-Tables.xlsx)
    of the published paper.  
  - UK Biobank
  - European
  - n = 155,961
  - 76 SNPs


 

These data are required to run the analysis described here in. All other
data, namely the outcome data, is available through the
[MR-Base](http://www.mrbase.org/) platform.

 

#### Outcome data

*The different metabolite data used for this analysis are:*

 

[**Kettunen et al. (2016) metabolite
data:**](https://www.ncbi.nlm.nih.gov/pubmed/?term=27005778)

  - Consortium of 14 studies
  - European
  - n = 24,925
  - 123 metabolites profiled using NMR
      - The metabolite set covers multiple metabolic pathways, including
        lipoprotein lipids and subclasses, fatty acids as well as amino
        acids and glycolysis precursors.
  - 74 independent loci
      - 62 independent loci identfiied in meta-analysis
          - 9 additional independent secondray associations within the
            62
          - 2 additional independent tertiary associations within the 9
          - 1 additional independent quarternary association within the
            2
  - MR-Base ID = 838:960

 

[**Shin et al. (2014) metabolite
data:**](https://www.ncbi.nlm.nih.gov/pubmed/?term=24816252)

  - Two studies: KORA and TwinsUK
  - European
  - n = 7,824
  - 452 metabolites
      - 177 unknown
  - 299 SNP-metabolite associations
      - 145 independent SNPs
  - MR-Base ID = 303:754

 

## File structure

``` 
                               levelName
1  002_adiposity_metabolites            
2   ¦--mrbase.oauth                     
3   ¦--analysis                         
4   ¦   ¦--BMI                          
5   ¦   ¦   °--plots                    
6   ¦   ¦--BF                           
7   ¦   ¦   °--plots                    
8   ¦   °--WHR                          
9   ¦       °--plots                    
10  ¦--data                             
11  ¦--environment                      
12  ¦   °--environment.sh               
13  ¦--output                           
14  °--scripts                          
15      ¦--log                          
16      ¦--.Renviron                    
17      ¦--step1_BF_metabolites_MR.R    
18      ¦--step1_BF_metabolites_qsub.sh 
19      ¦--step1_BMI_metabolites_MR.R   
20      ¦--step1_BMI_metabolites_qsub.sh
21      ¦--step1_WHR_metabolites_MR.R   
22      °--step1_WHR_metabolites_qsub.sh
```

``` 
                               levelName
1  002_adiposity_metabolites            
2   ¦--mrbase.oauth                     
3   ¦--analysis                         
4   ¦   ¦--BMI                          
5   ¦   ¦   °--plots                    
6   ¦   ¦--BF                           
7   ¦   ¦   °--plots                    
8   ¦   °--WHR                          
9   ¦       °--plots                    
10  ¦--data                             
11  ¦--environment                      
12  ¦   °--environment.sh               
13  ¦--output                           
14  °--scripts                          
15      ¦--log                          
16      ¦--.Renviron                    
17      ¦--step1_BF_metabolites_MR.R    
18      ¦--step1_BF_metabolites_qsub.sh 
19      ¦--step1_BMI_metabolites_MR.R   
20      ¦--step1_BMI_metabolites_qsub.sh
21      ¦--step1_WHR_metabolites_MR.R   
22      °--step1_WHR_metabolites_qsub.sh
```

  - `analysis` - where outputs from scripts are stored
  - `data` - where data is stored from which scripts call
  - `environment` - where my `environment.sh` script with the global
    path is stored
  - `output` - where the final publishable results for this project is
    stored
  - `scripts` - where all scripts for this project are housed
      - I run all of my scripts from this directory using the following
        command in Terminal: `qsub my_script.sh -d ./`
  - `log` - where the log `error` and `output` files are stored from my
    submitted jobs

 

## Enviornment

1.  I run all of my `R` scripts using the University of Bristol high
    performance computer
    [BlueCrystal 3](https://www.acrc.bris.ac.uk/acrc/phase3.htm),
    submitting them as jobs using `.sh` files
2.  First I create an `environment.sh` file (in a directory called
    environment) with my global file path in.
      - I call this environment.sh file from my `.sh` submission scripts
        to set my working directory and all subsequent directories.
3.  Second I create a .Renviron file (where all of my `R` scripts are
    stored) with the same global file path as the environment.sh file.
      - I call the .Renviron file from my .R scripts to set my working
        directory and all subsequent directories using `Sys.getenv()`.

 

## Analysis

  - All of my scripts for analysis are in `scripts`
  - All `R` scripts save outputs to `analysis` and the analysis specific
    directory within this
      - E.g. `step1_BMI_metabolites_MR.R` will output to
        `../analysis/BMI/`, and any plots generated will output to
        `../analysis/BMI/plots/`
  - All `.sh` submission files produce `error` and `output` files which
    output to `../scripts/log/`

<!-- end list -->

1.  First, and within the `scripts` directory, I submit
    `step1_???_metabolites_qsub.sh` as a job to BlueCrystal 3
      - This job calls the `R` script of the same name
        i.e. `step1_???_metabolites_MR.R`, which performs the analysis
        of the adiposity measure and the two metabolite data sets
    
      - `step1_???_metabolites_MR.R` script explanation
        
        1.  Load relevant libraries and set environemnt
        2.  Identify outcomes of interest in teh MR-Base catalogue
        3.  Read in exposure data using `read_exposure_data()`
        4.  Extract exposure SNPs from outcome data using
            `extract_outcome_data()` and the following variables:
              - `proxies` - look for LD proxies = yes
              - `rsq` - if proxies = yes, minimum LD R^2 value = 0.8
              - `align_alleles` - if proxies = yes, try to align proxies
                to target alleles = yes
              - `plaindromes` - if proxies = yes, allow palindromic SNPs
                = yes
              - `maf_threshold` - MAF threshold to try to infer
                palindromic SNPs = 0.3
        5.  Harmonise alleles between exposure and outcome using
            `harmonise_data()` and the following variables:
              - `action` = 2 - Try to infer positive strand alleles,
                using allele frequencies for palindromes
        6.  Perform MR analysis using `mr()`
              - `method_list` sets the methods to use for the MR
                analysis
        7.  Additional tests:
              - `mr_singlesnp()` - obtain MR results for each single SNP
                of the exposure and each outcome, the default method is
                Wald ratio. The function also calculates the full MR
                result, the default method is IVW and MR Egger
              - `mr_heterogeneity()` - obtain MR heterogeneity
                statistics
              - `mr_pleiotropy_test()` - the MR Egger intercept for each
                test can be obtained to assess horizontal pleiotropy
        8.  Save results
2.  Second, I perform multiple testing for each of the tests performed
    within eah analysis
      - 0.05/123 for the Kettunen metabolite data outcome
      - 0.05/275 for the Shin metabolite data outcome

 

## Results

  - All figures show the raw beta estimates for the MR analysis
  - Order of metabolites
      - Ordering is first done alphabetically by class
      - Ordering is secondly done within each class by lowest to highest
        beta of the IVW estimate
  - Axis
      - The solid pink line always represents 0
      - The dotted pink line always represents -0.10 and 0.10.
      - The lower and upper limit of each track is specific to the
        highest and lowest estimate for that track, and so varies across
        tracks
  - Tracks
      - The outer track is always BMI
      - The middle track always body fat %
      - The inner track always waist hip ratio
  - Points:
      - Black - IVW
      - Green - MR Egger
      - Purple - Wesighted median
      - Blue - Weighted mode
      - Open - P \> 0.05/n tests
      - Solid - P \< 0.05/n
tests

<embed src="/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/combined/plots/all_methods/adiposity_Kettunen_circos_BMIsort.pdf" title="MR results for adiposity measures and Kettunen metabolites" alt="MR results for adiposity measures and Kettunen metabolites" scale=5 style="display: block; margin: auto;" type="application/pdf" />

<embed src="/Users/ml16847/OneDrive - University of Bristol/001_projects/002_adiposity_metabolites/analysis/combined/plots/all_methods/adiposity_shin_circos_BMIsort.pdf" title="MR results for adiposity measures and Shin metabolites" alt="MR results for adiposity measures and Shin metabolites" scale=5 style="display: block; margin: auto;" type="application/pdf" />
