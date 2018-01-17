require "formula"

class Gi < Formula
  VERSION = "0.3.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "5e9b598c31502c917bedb3c5f3446f8ef491cdb3945dc10e2d425297224a630b"

  bottle :unneeded

  def install
	libexec.install Dir["*"]
	bin.install_symlink libexec/"bin/gi"
	# man1.install libexec/"share/man/man1/srcclr.1"
  end
end
