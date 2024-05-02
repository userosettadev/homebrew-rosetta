# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rosetta < Formula
  desc ""
  homepage "https://github.com/userosettadev/rosetta-cli"
  version "0.0.18"

  on_macos do
    url "https://github.com/userosettadev/rosetta-cli/releases/download/v0.0.18/rosetta-cli_0.0.18_darwin_all.tar.gz"
    sha256 "756ace1baa2ecef907941c8a2d0e2bf6f8bd9903e665d98cee1a9377b05f0425"

    def install
      bin.install "rosetta"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/userosettadev/rosetta-cli/releases/download/v0.0.18/rosetta-cli_0.0.18_linux_amd64.tar.gz"
      sha256 "ce5faf6aec393530140c2e15cfc16e7ee3d7fd2c4d98601cd5f78a430e962cbf"

      def install
        bin.install "rosetta"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/userosettadev/rosetta-cli/releases/download/v0.0.18/rosetta-cli_0.0.18_linux_arm64.tar.gz"
      sha256 "19809df8506b3e87a052e7b1df9e817b82ec35ef1089c95a29fa723df941debb"

      def install
        bin.install "rosetta"
      end
    end
  end
end
