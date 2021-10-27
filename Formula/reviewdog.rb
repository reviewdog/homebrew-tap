# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reviewdog < Formula
  desc "Automated code review tool integrated with any code analysis tools regardless of programming language."
  homepage "https://github.com/reviewdog/reviewdog"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.13.0/reviewdog_0.13.0_Darwin_x86_64.tar.gz"
      sha256 "c84fcbef48cc689fdb7e3a6cd0cf24896d42b87dd6dbeda045435aead44c3010"
    end
    if Hardware::CPU.arm?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.13.0/reviewdog_0.13.0_Darwin_arm64.tar.gz"
      sha256 "227901b527901963557d8b4169656ef173c1e858bd8c3775ad687b4f0d09e54b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.13.0/reviewdog_0.13.0_Linux_x86_64.tar.gz"
      sha256 "2993478234218448d66fa34c275f8821fbdf99d8d63b7fa6ff3e6352f9e85df2"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.13.0/reviewdog_0.13.0_Linux_armv6.tar.gz"
      sha256 "8e579be1998fa737c50a48c27c7b6d954f56fe1dbe10cbc9540668149c230cb0"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.13.0/reviewdog_0.13.0_Linux_arm64.tar.gz"
      sha256 "38e95b9292501674fbf6d010e25140b6dedc6a5312d53e4d74f1e15a2914ba88"
    end
  end

  def install
    bin.install "reviewdog"
  end

  test do
    system "#{bin}/reviewdog -version"
  end
end
