require "formula"

class Gi < Formula
  VERSION = "0.5.0"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "865cfba626966e036e652d8dfd1415359383f1d5fee92e7636fd154aaed03760"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}"
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	man1.install "gi.1"
  end
end
