# Local Code Review + Commit Helper

Local-first Claude Code plugin for fast, guarded reviews and clean commits. It keeps all analysis on your machine and works directly off `git` state—perfect for catching risks before you push.

## What it does
- Structured code review command that inspects staged and unstaged diffs with severity-labeled findings and test guidance.
- Commit message suggester that emits concise Conventional Commit titles plus optional body/tests.
- Reusable code-review skill with guardrails (repo checks, scope sizing, severity standards).
- After-write hook that surfaces a quick status/diff stat and nudges you to review before committing.

## Components
- Commands: `/review-changes`, `/suggest-commit-message`
- Skill: `code-review`
- Hook: `afterWrite` (`hooks/after-write.sh`)

## Usage
1) Trigger `/review-changes` to get a scoped review (staged first, then unstaged). If there are no diffs, it stops early.
2) Trigger `/suggest-commit-message` to produce a Conventional Commit-style title (and optional body/tests). Defaults to staged changes; notes unstaged work if present.
3) The `afterWrite` hook auto-runs after file writes and shows a quick `git status` + diff stat summary. Use it as a prompt to run the review command.

## Notes
- Entirely local—no network calls.
- Avoids broad suggestions like adding dependencies unless essential.
- If diffs are huge, the reviewer asks you to narrow scope before proceeding.
