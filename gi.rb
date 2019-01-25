require "formula"

class Gi < Formula
  VERSION = "0.5.1"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "cd5aace6c0dfd87f26cdd718d33b3efb61866cc3fa2f40e65775c97140157479"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}"
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	man1.install_symlink "#{libexec}/doc/gi.1"
  	ohai "Bash completion script installed to #{libexec}/gi-complete.bash. Source this file to enable completion."
  end
end
