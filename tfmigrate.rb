# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmigrate < Formula
  desc "A Terraform state migration tool for GitOps"
  homepage "https://github.com/minamijoyo/tfmigrate"
  version "0.3.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.17/tfmigrate_0.3.17_darwin_arm64.tar.gz"
      sha256 "114c1e368850cd09b9a584fb5219e8897cb47c2a243706aeadf93500e28d877f"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.17/tfmigrate_0.3.17_darwin_amd64.tar.gz"
      sha256 "d59573b287c33e76d1a1d4b36ba65bd51c6e0ed4f9b2f017795edfac653b3823"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.17/tfmigrate_0.3.17_linux_amd64.tar.gz"
      sha256 "68c1618c9d34e0d2b4e1a8bd2ade6aa0b494ad55a5aba71ae93ef7fb626908a2"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.17/tfmigrate_0.3.17_linux_arm64.tar.gz"
      sha256 "770935cf42718c5f8505fe555f4e70f5736b90f5ce6fa60fb419c233f315a932"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  test do
    system "#{bin}/tfmigrate -v"
  end
end
