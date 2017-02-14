#
# sss.rb
#
# Copyright (c) 2017 Junpei Kawamoto
#
# This file is part of sss.
#
# sss is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# sss is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with sss.  If not, see <http:#www.gnu.org/licenses/>.
#
class Sss < Formula
  desc "An implementation of Shamir's secret sharing"
  homepage "https:#github.com/itslab-kyushu/sss"
  version "0.3.0"

  if Hardware::CPU.is_64_bit?
    url "https:#github.com/itslab-kyushu/sss/releases/download/v0.3.0/sss_0.3.0_darwin_amd64.zip"
    sha256 "bd997cabadb10273a74e3231212719cb2fa34aa86be72f603a97f41b75753538"
  else
    url "https:#github.com/itslab-kyushu/sss/releases/download/v0.3.0/sss_0.3.0_darwin_386.zip"
    sha256 "e101dbbc21517f755eaee141e6798210b55855191412385d4d2f22599182c131"
  end

  def install
    bin.install "sss"
  end

  test do
    system "sss"
  end

end
