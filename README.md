# Tools

This repo simplifies installation of my homegrown tools, such as:

- [`delta`](https://github.com/octavore/delta), a diff tool with a browser-based GUI.
- [`lightproxy`](https://github.com/octavore/lightproxy), a lightweight local proxy.


## Installing


```
# (optional) brew update
brew install octavore/tools/delta
brew install octavore/tools/lightproxy
```


## Developing

Symlink this repo to:

```
ln -nfs $PWD `brew --repo`/Library/Taps/octavore/homebrew-tools
brew install octavore/tools/lightproxy
```