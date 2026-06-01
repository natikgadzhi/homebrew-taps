# typed: false
# frozen_string_literal: true

# This file is updated by the copilot-python release workflow. DO NOT EDIT.
class CopilotCli < Formula
  desc "Personal CLI for Copilot Money: sync to SQLite, edit transactions, export"
  homepage "https://github.com/natikgadzhi/copilot-python"
  url "https://github.com/natikgadzhi/copilot-python/releases/download/v0.4.1/copilot.py"
  sha256 "728220910f9f78af1a010cadeb35c663d293819a5fdca948db8d1502d8cdf472"
  version "0.4.1"
  license "MIT"

  # copilot.py is a single PEP 723 uv script: deps are declared inline and
  # resolved (and cached) by uv on first run, so there is no virtualenv to
  # manage here — we just need uv on the box.
  depends_on "uv"

  def install
    libexec.install "copilot.py"
    (bin/"copilot-cli").write <<~SH
      #!/bin/bash
      exec "#{Formula["uv"].opt_bin}/uv" run --script "#{libexec}/copilot.py" "$@"
    SH
    chmod 0755, bin/"copilot-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/copilot-cli --version")
  end
end
