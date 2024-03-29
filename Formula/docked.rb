# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Docked < Formula
  desc "A Dockerfile linter"
  homepage "https://github.com/jimschubert/docked"
  version "0.4.0"
  license "Apache 2.0"

  depends_on "go"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jimschubert/docked/releases/download/v0.4.0/docked_darwin_arm64.tar.gz"
      sha256 "f6bd543ea8d6d274b3fddc0f4cdc93c139acde19f863a3f5a21d274440a9f4f8"

      def install
        bin.install "docked"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/jimschubert/docked/releases/download/v0.4.0/docked_darwin_amd64.tar.gz"
      sha256 "96005385965eaad275992bb917e811a293b4766ab6e1b850c7310858f384888f"

      def install
        bin.install "docked"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jimschubert/docked/releases/download/v0.4.0/docked_linux_amd64.tar.gz"
      sha256 "f4d2680314a2488ffa0d2c91c55df60568ae596c1d63e8517b97d089be6c9707"

      def install
        bin.install "docked"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jimschubert/docked/releases/download/v0.4.0/docked_linux_armv6.tar.gz"
      sha256 "083855f23834f69ec36b5037d8ce51730d15424492daeffebee56bd3b01eb914"

      def install
        bin.install "docked"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimschubert/docked/releases/download/v0.4.0/docked_linux_arm64.tar.gz"
      sha256 "e8ec1885fa10b89b92a4652be53e13a7f1da7f5498b498d438f4921f417578c8"

      def install
        bin.install "docked"
      end
    end
  end

  test do
    system "#{bin}/docked -v"
  end
end
