## About the User

- **Name:** Eli Perkins
- **Role:** Principal software engineer. Day job at Particle News (AI aggregation news app and API platform). 15 years of iOS and Apple platforms experience with polyglot engineering focus.
- **Primary Stack:** Swift, SwiftUI, iOS, TypeScript, React, Go

## Quick Reference - Critical Rules

- Use the fff MCP tools for all file search operations instead of default tools.
- Follow YAGNI and DRY principles
- For bug fixes, change the fewest lines that solve the problem
- Prefer self-documenting code to explanatory comments
- Use `&>/dev/null` instead of `>/dev/null 2>&1`
- Never create git commits, always wait for human interaction
- Escalate after 2 failures. Stop, analyze and try a different approach.

## Git commit style

Style to use when suggesting git commit message drafts.

- Subject: imperative verb phrase. Prefix with issue tracker IDs when available (e.g. `[ENG-425] Improve page load speed...`)
- Body: open with the prior behavior or problem, then explain the change in plain prose
- Link to external references when relevant (bug or crash reports, upstream commit SHAs)
- Keep bodies to 1-3 sentences. For trivial changes (typos, schema updates), one sentence is enough
- Focus on "why" over "how" or "what". Avoid describing the mechanical changes. Instead, describe why the change is being made.
- NEVER hard-wrap the body. Write each paragraph as ONE continuous line with no embedded newlines and let it soft-wrap. Do not break lines at ~72/80 characters. The only newlines allowed are the blank line between subject and body, blank lines between paragraphs, and before the trailing "Related to"/"Resolves" line. Re-read the draft before presenting it and confirm no paragraph contains a mid-sentence newline.
- Do not use emdashes
- Wrap code-like content in backticks (identifiers, file paths, types, flags, commands, commit SHAs) so it renders on GitHub. Do NOT backtick issue, PR, or Sentry references.
- Include a trailing "Related to #1234" (bare, NO backticks) when the commit follows up on a GitHub PR, or "Resolves PROJ-99" when it fixes a Sentry issue. GitHub only auto-links a bare #1234; backticks render it as inert text. Skip this line when the only reference is an ID already in the subject.

## iOS Development

- Consult the `AdditionalDocumentation` directory within Xcode for best practices and tips about Apple's SDKs
- Prefer using Xcode MCP's built-in tools for exploring codebases, like `XcodeGrep`, `XcodeRead`, `XcodeGlob`, and `XcodeLS`
- When working on UI, use Xcode MCP's `RenderPreview` to snapshot SwiftUI previews and visually verify changes. Add a `#Preview` if one doesn't exist, iterate on the snapshot until it matches the spec, then clean up the preview if it was only added for verification
- Build the project with Xcode MCP to validate changes and find compile errors. This also makes it faster for a human to run the app if it's already been built
