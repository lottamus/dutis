class Dutis < Formula
  desc "A command-line tool to select default applications. It is a wrapper around [duti](https://github.com/moretension/duti)."
  homepage "https://github.com/tsonglew/dutis"
  url "https://github.com/tsonglew/dutis/archive/refs/heads/master.tar.gz"
  version "e8f8d6176fff1b42e7e68a552fcfd2923f9c27a2"
  sha256 "6ea5130df97abd9040e6db8715843aae3b92732207b1ef92fc932ad60ae62a59"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", bin/"dutis", "."
  end

  test do
    system "#{bin}/dutis"
  end
end
