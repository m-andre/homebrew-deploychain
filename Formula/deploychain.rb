# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deploychain < Formula
  desc "Simple app to demonstrate deployment chain"
  homepage "https://www.andre.sk"
  version "0.0.2"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://s3.andre.sk/deploychain/deploychain/0.0.2/deploychain_0.0.2_darwin_amd64.tar.gz", :using => CurlDownloadStrategy
    sha256 "9d53d23599509a5f808645b61043bc57c7500325ca3f01942f3da095962c7cbe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://s3.andre.sk/deploychain/deploychain/0.0.2/deploychain_0.0.2_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "3c920d1caf70548358c9de9a411c9333abbc51d37657f576fda950c5c67bb792"
  end

  def install
    bin.install "deploychain"
    etc.install "configs/deploychain.conf"
    man1.install "man/deploychain.1.md"
  end

  test do
    system "#{bin}/program --version"
  end
end
