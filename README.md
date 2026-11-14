<!--
Copyright 2026 Bruno Venceslau
SPDX-License-Identifier: Apache-2.0
-->

# flosslau/actions

The GitHub Actions the repositories of this organization share, so that each
of them checks the same thing the same way. One directory per action, with
its own README.

| Action | What it does |
| --- | --- |
| [`attribution`](attribution/README.md) | Refuses a pull request whose commits, title or description carry the identity or the attribution line of a coding agent. |

## Using an action

Name the action by its directory and pin it to a commit of this repository's
`main`:

```yaml
- uses: flosslau/actions/<action>@<commit SHA>
```

The README of each action has the workflow to copy and what it needs.

## Working on it

`make check` runs the tests of every action, with Python 3.11 or newer and
git; there is nothing to install. CI runs the same command.

## License

Apache License 2.0. See [LICENSE](LICENSE).
