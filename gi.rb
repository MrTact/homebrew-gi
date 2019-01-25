require "formula"

class Gi < Formula
  VERSION = "0.5.1"

  desc "Alternate command line client for git"
  homepage "https://gitlab.com/mrtact/gi"
  url "https://s3-us-west-2.amazonaws.com/org.tkeating.gi/gi-#{VERSION}.tar.gz"
  sha256 "bb3f2d9c5b03a00a6feb49062739e213b45cb50b8442682b8e21291ee6fb5ff4"

  bottle :unneeded

  def install
    inreplace "bin/gi", "GI_LIBEXEC", "#{libexec}"
  	libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/gi" => "gi"
  	man1.install_symlink "#{libexec}/doc/gi.1"
  	stdout.puts "Bash completion script installed to #{libexec}/gi-complete.bash. Source this file to enable completion."
  end
end
