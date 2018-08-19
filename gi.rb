require "formula"

class Gi < Formula
  VERSION = "0.5.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "d60931f4d3caf61db72d94dfd18d63a01ecd95e9227920ae386dcc81cbc529bb"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}"
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	man1.install "gi.1"
  end
end
