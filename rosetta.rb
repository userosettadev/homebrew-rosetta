# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Rosetta < Formula
  desc ""
  homepage "https://github.com/userosettadev/rosetta-cli"
  version "0.0.16"

  on_macos do
    url "https://github.com/userosettadev/rosetta-cli/releases/download/v0.0.16/rosetta-cli_0.0.16_darwin_all.tar.gz"
    sha256 "f2c2d78e99405e14976ad78bf12f37eaf06a0d03a595d7d6814be5b608539ab8"

    def install
      bin.install "rosetta"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/userosettadev/rosetta-cli/releases/download/v0.0.16/rosetta-cli_0.0.16_linux_amd64.tar.gz"
      sha256 "534f78c94364903aa1d56625cf6eeead52a720d3b982ad374873188a5125ac26"

      def install
        bin.install "rosetta"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/userosettadev/rosetta-cli/releases/download/v0.0.16/rosetta-cli_0.0.16_linux_arm64.tar.gz"
      sha256 "51f9232e0b8db75e4cc3d82ff3c6e39346143c133cdd5ee786adc47a23e49853"

      def install
        bin.install "rosetta"
      end
    end
  end
end
