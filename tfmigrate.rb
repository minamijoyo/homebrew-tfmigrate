# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmigrate < Formula
  desc "A Terraform state migration tool for GitOps"
  homepage "https://github.com/minamijoyo/tfmigrate"
  version "0.2.10"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.2.10/tfmigrate_0.2.10_darwin_amd64.tar.gz"
      sha256 "a5842d4e2bf524a58045d58f690d2835f49963923a367aadd27ea03f2bef5781"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.2.10/tfmigrate_0.2.10_linux_amd64.tar.gz"
      sha256 "2b911d52bb9cd57ba389ad4cb04b53107fb547ec41ac2b7cd0c01470a4d27b24"
    end
  end

  def install
    bin.install "tfmigrate"
  end

  test do
    system "#{bin}/tfmigrate -v"
  end
end
