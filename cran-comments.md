## Comments

  **Resubmission**
  
  1. Changed license to MIT to mirror change to MIT by Facebook/React
  2. "React" should now be all uppercase
  3. Do not want to add executable `babel_transform` example since many users do not use and do not want to have to install `V8`.  Use of `V8` also makes testing difficult.  However, it can be a very powerful tool when using with React, so I most definitely want to keep `babel_transform`.

## Test environments
* local Windows 10 install, R 3.4.0
* rhub check_for_cran
* travis-ci

## R CMD check results

0 errors | 0 warnings | 1 note

* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Kent Russell <kent.russell@timelyportfolio.com>'

License components with restrictions and base license permitting such:
  BSD_3_clause + file LICENSE
File 'LICENSE':
  YEAR: 2017
  COPYRIGHT HOLDER: Kenton Russell

## Reverse dependencies

There are no reverse dependencies.
