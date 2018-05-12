require "formula"

class Gi < Formula
  VERSION = "0.4.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "416c0702178d87156a70b238835159f3d7f76cb911cd6131490b56c5f8f4c2f8"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}" 
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	# man1.install libexec/"share/man/man1/srcclr.1"
  end
end
