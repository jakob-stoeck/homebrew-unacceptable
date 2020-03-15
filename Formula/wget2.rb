class Wget2 < Formula
  desc "Multithreaded metalink/file/website downloader"
  homepage "https://gitlab.com/gnuwget/wget2/"
  url "https://ftp.gnu.org/gnu/wget/wget2-1.99.2.tar.gz"
  mirror "https://ftpmirror.gnu.org/wget/wget2-1.99.2.tar.gz"
  sha256 "cbc48f55fa22ed2acbccf032c208c133cc59c7432cda8518a4992eb5882b6563"

  depends_on "gettext"
  depends_on "gnutls"
  depends_on "gpgme"
  depends_on "libpsl"
  depends_on "nghttp2"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system bin/"wget2", "-O", "/dev/null", "https://www.example.org/"
  end
end
