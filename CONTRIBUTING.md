# Contributing

The project team welcomes contributions from the community. Whether it is a bug report, an enhancement request, or documentation update, we greatly value feedback and contributions from our community.

Before you start working with project, please read our [Developer Certificate of Origin][vmware-cla-dco].

All contributions to this repository must be signed as described on that page. Your signature certifies that you wrote the patch or have the right to pass it on as an open-source patch.

## Issues

We welcome you to use the GitHub issues for bug reports, enhancement requests, feature requests, or documentation updates.

When filing an issue, please check existing open, or recently closed, issues to make sure someone else has not already reported the issue.

Please try to include as much information as you can. Details like these are incredibly useful:

- A reproducible test case or series of steps.
- Any modifications you have made relevant to the bug.
- Anything unusual about your environment or deployment.

You can also start a discussion on the [discussions][gh-discussions] area to ask questions or share ideas.

## Pull Requests

Contributions using pull requests are appreciated. Before opening a pull request, please ensure that:

1. You check existing open, and recently merged, pull requests to make sure it has not already been addressed for an upcoming release.
2. You [open a discussion][gh-discussions] to discuss any significant work with the maintainer(s).
3. You [open an issue][gh-issues] with a clear description of the problem you are trying to solve if one does not already exist.
4. You are working against the latest source on the `develop` branch.

To submit a pull request, please:

1. Fork the repository and clone your fork.
2. Create a topic branch from the `develop` branch. For example, `feat/add-x` or `fix/update-y`.
3. Modify the source. Please focus the scope on the specific change you are contributing.
4. Ensure that local tests, if any, pass.
5. Update the documentation, if required. See the `docs` directory for the documentation source.
6. Commit to your fork [using clear commit messages][git-commit]. Please use [Conventional Commits][conventional-commits].
7. Submit a pull request, answering any default questions in the pull request, and linking to any related issues for context. See [GitHub flavored markdown syntax][gh-markdown] for references.
8. Submit a work in progress pull request as a **draft pull request**. Mark the pull request as **ready for review** when you are ready for feedback.
9. Review any automated checks on the the pull request pass.
10. Stay engaged in the pull request review process.

GitHub provides additional document on [forking a repository][gh-forks] and [creating a pull request][gh-pulls].

### Contributor Workflow

This is a general outline of the workflow for contributing to this project:

- Create a topic branch from where you want to base your work.
- Make commits of logical units.
- Make sure your commit messages are [in the proper format][conventional-commits].
- Push your changes to a topic branch in your fork of the repository.
- Submit a pull request.

Example:

``` shell
git remote add upstream https://github.com/<org-name>/<repo-name>.git
git checkout --branch feat/add-x develop
git commit --signoff --message "feat: add support for x
  Added support for x.

  Signed-off-by: Jane Doe <jdoe@example.com>
  
  Ref: #123"
git push origin feat/add-x
```

### Formatting Commit Messages

We follow the conventions on [How to Write a Git Commit Message][git-commit] and [Conventional Commits][conventional-commits].

Be sure to include any related GitHub issue references in the commit message.

Example:

```markdown
feat: add support for x

Added support for x.

Signed-off-by: Jane Doe <jdoe@example.com>

Ref: #123
```

See [GitHub flavored markdown syntax][gh-markdown] for referencing issues, pull requests, and commits.

### Rebasing the Pull Request with Upstream

When your branch gets out of sync with the upstream `develop` branch, use the following to update:

``` shell
git checkout feat/add-x
git fetch --all
git pull --rebase upstream develop
git push --force-with-lease origin feat/add-x
```

### Updating a Pull Request

If your pull request fails to pass or needs changes based on code review, you will most likely want to squash these changes into existing commits.

If your pull request contains a single commit or your changes are related to the most recent commit, you can simply amend the commit.

``` shell
git add .
git commit --amend
git push --force-with-lease origin feat/add-x
```

If you need to squash changes into an earlier commit, you can use:

``` shell
git add .
git commit --fixup <commit>
git rebase --interactive --autosquash develop
git push --force-with-lease origin feat/add-x
```

Be sure to add a comment to the pull request indicating your new changes are ready to review. GitHub does not generate a notification when you `git push`.

[conventional-commits]: https://www.conventionalcommits.org/en/v1.0.0/
[git-commit]: http://chris.beams.io/posts/git-commit/
[gh-discussions]: https://github.com/vmware/power-validated-solutions-for-cloud-foundation/discussions
[gh-forks]: https://help.github.com/articles/fork-a-repo/
[gh-issues]:https://github.com/vmware/power-validated-solutions-for-cloud-foundation/issues
[gh-markdown]: https://guides.github.com/features/mastering-markdown/#GitHub-flavored-markdown
[gh-pulls]: https://help.github.com/articles/creating-a-pull-request/
[vmware-cla-dco]: https://cla.vmware.com/dco
