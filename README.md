# Re:VIEW PDF Generator Action

This is a [GitHub Action](https://github.com/features/actions) for [Re:VIEW](https://github.com/kmuto/review) repository: builds PDF and uploads as Artifacts.

**Name:** `takahashim/review-pdf-generator-action`

## Usage

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
      uses: takahashim/review-pdf-generator-action/upload-artifact@master
```

----

(in Japanese)

これは[Re:VIEW](https://github.com/kmuto/review)リポジトリ用の[GitHub Action](https://github.com/features/actions)で、PDFをビルドしてArtifactsとして保存するものです。

GitHub Actionsのbeta版に対応しています（現在はbeta版にsign upしている方のみ利用可能です）。

## 使い方

以下のようなYAMLファイルを `.github/workflows/main.yml` ファイルなどに置きます。

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
      uses: takahashim/review-pdf-generator-action/upload-artifact@master
```
