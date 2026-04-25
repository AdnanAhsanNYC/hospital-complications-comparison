# Healthcare Operations BI Dashboard

An end-to-end business intelligence project analyzing U.S. hospital complication 
and death rates using CMS public data, Python, SQL, and Looker Studio.

## Live Dashboard
https://datastudio.google.com/reporting/a756790a-1680-460c-a878-6af722387c5b

## Problem Statement
Hospital complication and mortality rates vary significantly across the U.S. 
This project identifies which states, hospitals, and measure types show the 
highest and lowest rates — giving healthcare administrators and policymakers 
a data-driven starting point for quality improvement.

## Dataset
- **Source:** CMS Hospital Compare — Complications & Deaths
- **Link:** https://data.cms.gov/provider-data/dataset/ynj2-r877
- **Size:** 95,780 rows × 18 columns (raw), 50,478 rows after cleaning
- **Period:** Most recent reporting period (filtered to latest end date)

## Tools & Stack
| Layer        | Tool                        |
|--------------|-----------------------------|
| Cleaning     | Python (pandas)             |
| Storage      | SQLite                      |
| Analysis     | SQL                         |
| Dashboard    | Looker Studio               |
| Version Control | Git / GitHub             |

## Project Structure
healthcare-bi-portfolio/
├── data/
│   ├── raw/          ← original CMS CSV (not tracked in git)
│   └── clean/        ← processed CSVs for Looker Studio
├── sql/              ← analytical SQL queries
├── notebooks/        ← Python cleaning scripts
├── outputs/          ← screenshots and exports
└── README.md

## Key Findings
1. **Hospitals rated worse than national average score 2x higher** than 
   those rated better (22.36 vs 11.42 avg score)
2. **PSI-04 (surgical death rate)** has an avg score of 173.90 — measured 
   per 1,000 patients, making it the highest-magnitude metric in the dataset
3. **Specialty orthopedic hospitals dominate the best-performer rankings** 
   likely due to elective, lower-risk procedure mix
4. **Mariana Islands and Virgin Islands** show elevated scores but represent 
   1-2 hospitals — small sample size limits conclusions

## Data Dictionary
| Column | Description |
|--------|-------------|
| facility_id | Unique CMS hospital identifier |
| facility_name | Hospital name |
| city, state | Location |
| measure_id | CMS measure code (e.g. MORT_30_PN) |
| measure_name | Human-readable measure description |
| compared_to_national | Performance vs national benchmark |
| score | Rate per 1,000 patients (scale varies by measure) |
| lower_estimate / higher_estimate | 95% confidence interval |

## Methodology
1. Downloaded raw CMS CSV and loaded into pandas
2. Dropped non-analytical columns (Footnote, Address, Telephone)
3. Cast numeric columns and parsed dates
4. Filtered to most recent reporting period only
5. Removed records with null scores
6. Loaded into SQLite and wrote 4 analytical queries
7. Exported clean CSVs to Looker Studio via Google Sheets
