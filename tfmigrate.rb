# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmigrate < Formula
  desc "A Terraform / OpenTofu state migration tool for GitOps"
  homepage "https://github.com/minamijoyo/tfmigrate"
  version "0.3.23"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.23/tfmigrate_0.3.23_darwin_amd64.tar.gz"
      sha256 "8d0e78fc872b420b81a4fb36ce2fb976c316a222881516295ebab2732606dd83"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.23/tfmigrate_0.3.23_darwin_arm64.tar.gz"
      sha256 "f29e2bffa476caba656e224f0a2dfc09f7d7186e43231ec9c3934429387dd60a"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.23/tfmigrate_0.3.23_linux_amd64.tar.gz"
      sha256 "42dee608c0829c1f3967a025db12962e826b0ced69d9d89631e7700ab7a5996e"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.23/tfmigrate_0.3.23_linux_arm64.tar.gz"
      sha256 "5266ad0884130627ee1f0e8a090af75924d8819b2f4bc1b4e7d6ab62857a74a1"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  test do
    system "#{bin}/tfmigrate -v"
  end
end
