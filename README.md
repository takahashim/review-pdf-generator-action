# Re:VIEW PDF Generator Action

This is a [GitHub Action](https://github.com/features/actions) for [Re:VIEW](https://github.com/kmuto/review) repository: builds PDF and uploads as Artifacts.

**Name:** `takahashim/review-pdf-generator-action`

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
      uses: takahashim/review-pdf-generator-action@master
    - name: upload as Artifacts
      uses: takahashim/review-upload-artifact@master
```
