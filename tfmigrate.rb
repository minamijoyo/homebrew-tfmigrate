# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmigrate < Formula
  desc "A Terraform state migration tool for GitOps"
  homepage "https://github.com/minamijoyo/tfmigrate"
  version "0.3.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.18/tfmigrate_0.3.18_darwin_arm64.tar.gz"
      sha256 "196312b365d8fcbe4c8159f0343fdd2f8acffb17c8636e955a37380954d4f21a"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.18/tfmigrate_0.3.18_darwin_amd64.tar.gz"
      sha256 "571d21dec5c762fe54d6f9c8096a9d97fe8b297525af1f8885fc3024e561ff84"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.18/tfmigrate_0.3.18_linux_amd64.tar.gz"
      sha256 "796a67893fe3875ee362dbafaeab29eaf8b7835f6fc8e25576b0fd047526f78f"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.18/tfmigrate_0.3.18_linux_arm64.tar.gz"
      sha256 "4780e9211d54c4f49c7a302bad0138a49f9b81a7f2d036eb63ff71a856a69964"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  test do
    system "#{bin}/tfmigrate -v"
  end
end
