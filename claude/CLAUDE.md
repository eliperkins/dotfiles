- Follow YAGNI and DRY principles
- For bug fixes, change the fewest lines that solve the problem
- Prefer self-documenting code to explanatory comments
- Use `&>/dev/null` instead of `>/dev/null 2>&1`
- Never create git commits

## Git commit style

- Subject: imperative verb phrase. Prefix with issue tracker IDs when available (e.g. `[ENG-425] Improve page load speed...`)
- Body: open with the prior behavior or problem, then explain the change in plain prose
- When a commit includes secondary changes, list them with `- ` dashes after the main narrative
- Link to external references when relevant (bug or crash reports, upstream commit SHAs)
- Keep bodies to 1-3 sentences. For trivial changes (typos, schema updates), one sentence is enough
- No filler preamble ("This commit...", "Changes include...")
- Focus on "why" over "how" or "what". Avoid describing the mechanical changes. Instead, describe why the change is being made.

## iOS Development

- Consult the `AdditionalDocumentation` directory within Xcode for best practices and tips about Apple's SDKs
- Prefer using Xcode MCP's built-in tools for exploring codebases, like `XcodeGrep`, `XcodeRead`, `XcodeGlob`, and `XcodeLS`
- When working on UI, use Xcode MCP's `RenderPreview` to snapshot SwiftUI previews and visually verify changes. Add a `#Preview` if one doesn't exist, iterate on the snapshot until it matches the spec, then clean up the preview if it was only added for verification
- Build the project with Xcode MCP to validate changes and find compile errors. This also makes it faster for a human to run the app if it's already been built
