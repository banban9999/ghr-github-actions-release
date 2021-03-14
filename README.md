# GHR GitHub Actions Release

This action create GItHub release by [ghr](https://github.com/tcnksm/ghr).

## Inputs

### `tag`

**Required** The name of release tag.

### `token`

**Required** GitHub token.

### `repository`

**Required** GitHub owner and repository name. e.g. `test/hello-world`

### `title`

**Required** GitHub release title.

### `body`

**Optional** GitHub release body.

## Outputs

none

## Example usage

```
uses: banban9999/ghr-github-actions-release@v1
with:
  tag: ${{ env.tag }}
  token: ${{ secrets.token }}
  repository: ${{ github.repository }}
  title: "Release ${{ env.tag }}"
  body: "YOUR OSS ${{ env.tag }} was released! See [CHANGELOG.md]() for details"
env: 
  tag: ${GITHUB_REF#refs/tags/v}
```
