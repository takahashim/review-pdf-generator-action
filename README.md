# Re:VIEW PDF Generator Action

This is a GitHub Action for Re:VIEW repository: builds PDF and uploads as Artifacts.

**Name:** `takahashim/review-pdf-generator`

# Usage

```yaml
name: build Re:VIEW PDF
on: [push]
jobs:
  build:
    name: generate PDF
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: build PDF
      uses: takahashim/review-generate-pdf-action@master
    - name: upload as Artifacts
      uses: takahashim/upload-artifact-review@master
```
