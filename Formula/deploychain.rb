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
    sha256 "21f85d24e6f715c42de15f3ddc2377ab7e35ac33cc2a0e8797f506ed2092ba81"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://s3.andre.sk/deploychain/deploychain/0.0.2/deploychain_0.0.2_darwin_arm64.tar.gz", :using => CurlDownloadStrategy
    sha256 "e23308eb1e42608d48165099f9063fc2bd92db55f19585109fb6005cc8bd8bf6"
  end

  def install
    bin.install "deploychain"
  end

  test do
    system "#{bin}/program --version"
  end
end
