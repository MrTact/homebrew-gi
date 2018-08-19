require "formula"

class Gi < Formula
  VERSION = "0.5.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "95366cb0acdfe0b89ab4482369387d947d3ec8f489bf3f6c2e80662c2c7927c4"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}"
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	man1.install_symlink "#{libexec}/doc/gi.1"
  end
end
