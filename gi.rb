require "formula"

class Gi < Formula
  VERSION = "0.3.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "fd420bc88f81057660672095479d9fa55bf195c62860724b69ba92d5bf343ab2"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}" 
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	# man1.install libexec/"share/man/man1/srcclr.1"
  end
end
