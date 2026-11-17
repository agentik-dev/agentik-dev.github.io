# agentik-dev.github.io

This repo deploys the agentik-dev organisation's root page, [agentik-dev.github.io](https://agentik-dev.github.io/), to GitHub Pages. It holds the workflow that deploys the page and the check of that workflow, never the page itself.

The page is the `site/` folder of the organisation's profile repo, [agentik-dev/.github](https://github.com/agentik-dev/.github). Edit it there, on that repo's main; a copy here is never served.

A deploy is started by hand, and only by hand:

```
gh workflow run pages.yml -R agentik-dev/agentik-dev.github.io
```

The workflow checks out the profile repo at main, stops with a plain message when `site/index.html` is absent, and deploys the `site` folder.

`make check` checks that the vendored hygiene scan matches its pinned sum, that the workflow still names the profile repo, `main`, the `site` folder and no trigger but `workflow_dispatch`, then runs the hygiene scan.
