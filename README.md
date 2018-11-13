# electoratenames

This package contains two R functions to ensure electorate names are spelled
correctly, and to correct common misspellings of electorate names.

## Getting Started

This package depends on glue, stringr and devtools, so you'll need those three
packages. Then you can install with

```{r}
devtools::install_github('thmcmahon/electoratenames')
```

Then you can check electorate names to your heart's content:

```{r}
# validate_name
# Returns TRUE/FALSE depending on whether the name is correct.

# Returns TRUE
validate_name('Bean')

# Returns FALSE
validate_name('Oconnor')

# fix_name
# Returns the correct electorate name based on common mispelling or wrong name.

# Returns "O'Connor"
fix_name('Oconnor')

# Returns "La Trobe"
fix_name('La trobe')

# Returns "Cooper"
fix_name('Batman')
```

## Adding more misspellings.

The misspelling database is in `'data_raw/common_name_problems.csv'` you can make
changes here then load the data into R, update the package data with
`devtools::use_data(common_name_problems)` and you'll be good to go.

## Complaints/comments

@ me on twitter with your feedback @thmcmahon.
