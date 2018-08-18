require "formula"

class Gi < Formula
  VERSION = "0.5.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "96cfd6c465505e9e0004eee969bbff59045c8d6d027a3924e7fe50167788d41c"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}"
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	# man1.install libexec/"share/man/man1/gi.1"
  end
end
