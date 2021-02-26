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
    sha256 "d167050ad30f6692cba07d70ba911a048cf0ed3882191401d488c38c3282aaa5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://s3.andre.sk/deploychain/deploychain/0.0.2/deploychain_0.0.2_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "c8f0ef2ebe8421c47373544f7c836def8899ec07600cb91495c0592b6fd80004"
  end

  def install
    bin.install "deploychain"
  end

  test do
    system "#{bin}/program --version"
  end
end
