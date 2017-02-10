#
# assets/formula.rb
#
# Copyright (c) 2016 Junpei Kawamoto
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Sss < Formula
  desc "An implementation of Shamir's secret sharing"
  homepage "https://github.com/jkawamoto/sss"
  version "0.2.0"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/jkawamoto/sss/releases/download/v0.2.0/sss_0.2.0_darwin_amd64.zip"
    sha256 "dce14e4ced04a6c63786c33b1dfeca273fbd4fbd366a5b9203d0ff79dba5f4ed"
  else
    url "https://github.com/jkawamoto/sss/releases/download/v0.2.0/sss_0.2.0_darwin_386.zip"
    sha256 "34e3ba2d8690405689d563ff3355496ddc192c8178494b8f9603cd16a0f98821"
  end

  def install
    bin.install "sss"
  end

  test do
    system "sss"
  end

end
