# Local Git Helper Plugin

Local-first Claude Code plugin that keeps reviews and commit prep entirely on your machine. It inspects git state, produces severity-ranked findings, and helps you ship clean commits without leaking code or adding dependencies.

## Problem statement

Developers often want a quick, high-signal review and a clean commit message without pushing code or spinning up remote services. This plugin automates that flow locally: it scopes staged vs unstaged diffs, highlights risks, and drafts Conventional Commit titles so you can commit confidently before pushing.

## Architecture

-   Commands: `/review-changes` orchestrates a scoped review using the `code-review` skill; `/suggest-commit-message` crafts a Conventional Commit title/body from local diffs.
-   Skill: `code-review` enforces repo checks, scope sizing, severity labels, and test guidance.
-   Hook: `afterWrite` (`hooks/after-write.sh`) runs after write/edit tool use, printing git status and diff stats as a prompt to review.
-   Local-first: all logic runs via git/CLI on your machine; no MCP servers or network calls.

## Installation & usage

Prereqs: Bash, git, and Claude Code with plugin loading enabled.

1. Clone this repo and open it in Claude Code (the `.claude-plugin/plugin.json` at the root is the entry point).
2. Run the slash commands:
    - `/review-changes` to get a severity-ranked summary of staged then unstaged diffs; it stops if no changes exist.
    - `/suggest-commit-message` to generate a Conventional Commit title (and optional body/tests) from staged changes; if only unstaged work exists it notes that.
3. Let the `afterWrite` hook run automatically after file writes/edits to show `git status` and diff stats, nudging you to review.

## Demo (text walkthrough)

## Reflection and future improvements

-   Add an MCP server for ticket context (e.g., Jira) to enrich commit messages.
-   Offer configurable severity policies per repo.
-   Provide optional test runners (dry-run) surfaced in the review command.
