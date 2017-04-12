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
  version "0.3.2"

  if Hardware::CPU.is_64_bit?
    url "https:#github.com/itslab-kyushu/sss/releases/download/v0.3.2/sss_0.3.2_darwin_amd64.zip"
    sha256 "8c72e925a667bf56022480684cb3a1844043df91a1b7dede02a894a36b128246"
  else
    url "https:#github.com/itslab-kyushu/sss/releases/download/v0.3.2/sss_0.3.2_darwin_386.zip"
    sha256 "c175df7c3ffbf3bba10549e953693ac9b98d203669aeeae461ae83bca45dbd88"
  end

  def install
    bin.install "sss"
  end

  test do
    system "sss"
  end

end
