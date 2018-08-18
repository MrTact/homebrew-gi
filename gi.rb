require "formula"

class Gi < Formula
  VERSION = "0.5.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "815f3bcb567b2d0a7aa17e91190e424be902a2cf0415f8c847a87275a654afe0"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}"
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	man1.install "#{libexec}/share/man/man1/gi.1"
  end
end
