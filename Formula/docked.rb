# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Docked < Formula
  desc "A Dockerfile linter"
  homepage "https://github.com/jimschubert/docked"
  version "0.3.1"
  license "Apache 2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jimschubert/docked/releases/download/v0.3.1/docked_0.3.1_Darwin_x86_64.tar.gz"
      sha256 "97b136b8e9617c3f72e4e793b99fd0051d4579acbb64300f12ba1433b0af5fcd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jimschubert/docked/releases/download/v0.3.1/docked_0.3.1_Darwin_arm64.tar.gz"
      sha256 "8bec2ca555bb2bf480ffcdb494863f1207f996662ab6c22ee60c4f11dbd8de58"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jimschubert/docked/releases/download/v0.3.1/docked_0.3.1_Linux_x86_64.tar.gz"
      sha256 "c803e34472b844f61f42406adbea51231d7a1a9eaa186498056db353d2fd20b2"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jimschubert/docked/releases/download/v0.3.1/docked_0.3.1_Linux_armv6.tar.gz"
      sha256 "be0a0bfa07903a56eb40075f6739477c46205f5a20fd691f71663eb0fa6b277d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jimschubert/docked/releases/download/v0.3.1/docked_0.3.1_Linux_arm64.tar.gz"
      sha256 "03bbbd2fb565a902ed9825316e58ef8a4169f8c7efdcff541978d44b98d9fddc"
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
