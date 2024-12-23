# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tfmigrate < Formula
  desc "A Terraform / OpenTofu state migration tool for GitOps"
  homepage "https://github.com/minamijoyo/tfmigrate"
  version "0.4.1"

  on_macos do
    on_intel do
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.4.1/tfmigrate_0.4.1_darwin_amd64.tar.gz"
      sha256 "1dfdcbb69e51fa180f935999d6900fb7dff15aeef4fb8820bdce7afef49529b7"

      def install
        bin.install "tfmigrate"
      end
    end
    on_arm do
      url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.4.1/tfmigrate_0.4.1_darwin_arm64.tar.gz"
      sha256 "81f3eef16023b01112ec536d4e5d38f810bdd907110ff2a326515b996957bcd0"

      def install
        bin.install "tfmigrate"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.4.1/tfmigrate_0.4.1_linux_amd64.tar.gz"
        sha256 "351303096265169671117b671e8d80607f13bddff7bc7f1e27a62ab0cd4a69b1"

        def install
          bin.install "tfmigrate"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/minamijoyo/tfmigrate/releases/download/v0.4.1/tfmigrate_0.4.1_linux_arm64.tar.gz"
        sha256 "cbf974fbc993828f1e4203735e63f8a0874137aaf70bf5b867ac85cb46a4c2e9"

        def install
          bin.install "tfmigrate"
        end
      end
    end
  end

  test do
    system "#{bin}/tfmigrate -v"
  end
end
