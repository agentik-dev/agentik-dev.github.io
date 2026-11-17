# The organisation's root site builds nothing, so it has one target.
# check: the vendored copies match their pinned sums, the pages workflow
# still names the profile repo, main, the site folder and workflow_dispatch
# alone (its self-test first refuses broken copies), then the hygiene scan
# finds no hit outside .hygiene-allow.
.PHONY: check
check:
	shasum -a 256 -c --status scripts/vendored.sha256
	scripts/workflow-check --self-test
	scripts/workflow-check
	scripts/hygiene
