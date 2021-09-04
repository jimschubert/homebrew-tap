# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Docked < Formula
  desc "A Dockerfile linter"
  homepage "https://github.com/jimschubert/docked"
  version "0.0.1"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jimschubert/docked/releases/download/v0.0.1/docked_0.0.1_Darwin_x86_64.tar.gz"
      sha256 "e15be96e0a5e8981173ba75ae94722993d078b5abafdabad1eb02a8d20fa12b0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jimschubert/docked/releases/download/v0.0.1/docked_0.0.1_Darwin_arm64.tar.gz"
      sha256 "d346f8781338db9626ff4479a8ad3498deb8d7dda1427d2e237bcd929d8cd70f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jimschubert/docked/releases/download/v0.0.1/docked_0.0.1_Linux_x86_64.tar.gz"
      sha256 "e29d6be9d3ab1b1ecde3bd2685ba26684677317e77f891d7125edff6d7fe3667"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jimschubert/docked/releases/download/v0.0.1/docked_0.0.1_Linux_armv6.tar.gz"
      sha256 "6bca323568f58b606c7ca6c712a89fb8fbb5adab02a6168e6c726010cf4dcba8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimschubert/docked/releases/download/v0.0.1/docked_0.0.1_Linux_arm64.tar.gz"
      sha256 "ecb4e45c6375aaf93ca4f8fac405779913c0d92b36fa30c6ffd3f103d26428ce"
    end
  end

  depends_on "go"

  def install
    bin.install "docked"
  end

  test do
    system "#{bin}/docked -v"
  end
end
