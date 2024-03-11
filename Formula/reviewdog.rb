# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reviewdog < Formula
  desc "Automated code review tool integrated with any code analysis tools regardless of programming language."
  homepage "https://github.com/reviewdog/reviewdog"
  version "0.17.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.17.2/reviewdog_0.17.2_Darwin_x86_64.tar.gz"
      sha256 "8faeddfa755048dc2fb3ad73ae7fea805cfcdcfec5997afefac66370899bbf8c"

      def install
        bin.install "reviewdog"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.17.2/reviewdog_0.17.2_Darwin_arm64.tar.gz"
      sha256 "0b16689b5cb5c4210a4478436e99a4ccd0daaf86700e310d2e5e26717e770b4e"

      def install
        bin.install "reviewdog"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.17.2/reviewdog_0.17.2_Linux_arm64.tar.gz"
      sha256 "873b075eae781eb28e710bf42a6c08edb4423a6abe389cb94e2b08af06fd4cda"

      def install
        bin.install "reviewdog"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.17.2/reviewdog_0.17.2_Linux_armv6.tar.gz"
      sha256 "23f5fbf5b3ef9cd764d856b9a34d67b453cab83eedc8b5707e0990523703b479"

      def install
        bin.install "reviewdog"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/reviewdog/reviewdog/releases/download/v0.17.2/reviewdog_0.17.2_Linux_x86_64.tar.gz"
      sha256 "1cb3fc67bd15225423f50ff06e543f7a4bb9be5c3952996848ec412a6cb4c390"

      def install
        bin.install "reviewdog"
      end
    end
  end

  test do
    system "#{bin}/reviewdog -version"
  end
end
