# Install wget2 with homebrew

Since `wget2` is still alpha it is not ["acceptable"](https://github.com/Homebrew/homebrew-core/pull/36855) in homebrew-core. If you still do want to install it with homebrew you can using this tap:

## Installation

Type those two commands in your Terminal:

```bash
brew tap jakob-stoeck/unacceptable
brew install wget2
```

## Description

[GNU Wget2](https://gitlab.com/gnuwget/wget2/) is the successor of GNU Wget, a file and recursive website downloader.

Designed and written from scratch it wraps around libwget, that provides the basic functions needed by a web client.

Wget2 works multi-threaded and uses many features to allow fast operation.

In many cases Wget2 downloads much faster than Wget1.x due to HTTP zlib compression, parallel connections and use of If-Modified-Since HTTP header.

