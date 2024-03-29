# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmigrate < Formula
  desc "A Terraform / OpenTofu state migration tool for GitOps"
  homepage "https://github.com/minamijoyo/tfmigrate"
  version "0.3.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.20/tfmigrate_0.3.20_darwin_arm64.tar.gz"
      sha256 "6834b1573c8c19ef6e19327f7223ffcd19c464035a17b3e8a521730c0240869e"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.20/tfmigrate_0.3.20_darwin_amd64.tar.gz"
      sha256 "d43640a6d28bc68aa832deba01e6cfc9a1bfe519c221f6503600060206d05c6d"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.20/tfmigrate_0.3.20_linux_arm64.tar.gz"
      sha256 "a55ab0c7bdbfdc9e972ef446a3867c94f2d385052eb0ebc9f0f8e7a7d74eaecb"

      def install
        bin.install "tfmigrate"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.3.20/tfmigrate_0.3.20_linux_amd64.tar.gz"
      sha256 "e1c0b21462c2be99c38ee83b0f3fffe8ba30d6f997ddca06ae9aba790ab0570f"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  test do
    system "#{bin}/tfmigrate -v"
  end
end
