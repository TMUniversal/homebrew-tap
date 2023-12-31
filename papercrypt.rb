# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Papercrypt < Formula
  desc "A tool to generate paper backups of your passwords and other secrets."
  homepage "https://github.com/TMUniversal/papercrypt"
  version "1.1.5"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tmuniversal/papercrypt/releases/download/v1.1.5/papercrypt_Darwin_arm64.tar.gz"
      sha256 "9e4d4a668157c47ff695783579672b6d91782e327e6e4354728ef16aea052719"

      def install
        bin.install "papercrypt"
        bash_completion.install "completions/papercrypt.bash" => "papercrypt"
        fish_completion.install "completions/papercrypt.fish"
        zsh_completion.install "completions/papercrypt.zsh" => "_papercrypt"
        man1.install "manpages/papercrypt.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tmuniversal/papercrypt/releases/download/v1.1.5/papercrypt_Darwin_x86_64.tar.gz"
      sha256 "ee3552513ce681c4b710484a61bc5c87db61d41efca0a8e5bb82fb0b3e687b3c"

      def install
        bin.install "papercrypt"
        bash_completion.install "completions/papercrypt.bash" => "papercrypt"
        fish_completion.install "completions/papercrypt.fish"
        zsh_completion.install "completions/papercrypt.zsh" => "_papercrypt"
        man1.install "manpages/papercrypt.1.gz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tmuniversal/papercrypt/releases/download/v1.1.5/papercrypt_Linux_arm64.tar.gz"
      sha256 "bd8aa85410e10d9df73649f34368032150c9b73e86737e6bf30c058e287fb079"

      def install
        bin.install "papercrypt"
        bash_completion.install "completions/papercrypt.bash" => "papercrypt"
        fish_completion.install "completions/papercrypt.fish"
        zsh_completion.install "completions/papercrypt.zsh" => "_papercrypt"
        man1.install "manpages/papercrypt.1.gz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tmuniversal/papercrypt/releases/download/v1.1.5/papercrypt_Linux_x86_64.tar.gz"
      sha256 "f1370836bc12befd5adfcbeb641d5bb8ff339d272faa48d7e9abefa5a344b843"

      def install
        bin.install "papercrypt"
        bash_completion.install "completions/papercrypt.bash" => "papercrypt"
        fish_completion.install "completions/papercrypt.fish"
        zsh_completion.install "completions/papercrypt.zsh" => "_papercrypt"
        man1.install "manpages/papercrypt.1.gz"
      end
    end
  end

  def caveats
    <<~EOS
      To get started, run:
        papercrypt help
    EOS
  end

  test do
    system "#{bin}/papercrypt version"
  end
end
