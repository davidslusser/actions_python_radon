# actions_python_radon
A Github action for running code complexity analysis with radon. This action uses the cc command from radon to compute the Cyclomatic Complexity of Python source files.


<br/>

## How to use
In your .github/workflows directory, create a yaml file (such as main.yaml). Add a job for each desired workflow with the `uses` keyword. Use the `with` keyword to pass any desired variables.

Examples:

```
on: [push]

jobs:
  radon:
    runs-on: ubuntu-latest
    name: "radon"
    steps:
      - uses: actions/checkout@v3
      - uses: davidslusser/actions_python_radon@v1.0.0
```
<br/>

```
on: [push]

jobs:
  radon:
    runs-on: ubuntu-latest
    name: "radon"
    steps:
      - uses: actions/checkout@v3
      - uses: davidslusser/actions_python_radon@v1.0.0
        with:
          src: "src"
          min: "A"
          grade: "B"
```

<br/>

## Inputs
  - **src:** source file or directory used for analysis (defaults to "`.`")
  - **grade:** letter grade (rank) to use for pass/fail; average complexity must be equal or greater than this value to pass (defaults to "`B`")
  - **min:** minimum complexity rank to display (defaults to "`A`")

<br/>

## References
 - https://en.wikipedia.org/wiki/Cyclomatic_complexity
 - https://radon.readthedocs.io/en/latest/
