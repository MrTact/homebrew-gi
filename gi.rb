require "formula"

class Gi < Formula
  VERSION = "0.4.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "8d1c8a7a511b4ba4d972a67780b3d6acaa785a229c7a3ecd508dc329d390796a"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}" 
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	# man1.install libexec/"share/man/man1/srcclr.1"
  end
end
