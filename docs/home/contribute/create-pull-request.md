---
title: Creating a Documentation Pull Request
---

{% capture overview %}

To contribute to the HoneyTrap documentation, create a pull request against the
[honeytrap/honeytrap-docs](https://github.com/honeytrap/honeytrap-docs){: target="_blank"}
repository. This page shows how to create a pull request.

{% endcapture %}

{% capture prerequisites %}

1. Create a [GitHub account](https://github.com){: target="_blank"}.

1. Sign the
[Linux Foundation Contributor License Agreement](https://identity.linuxfoundation.org/projects/cncf){: target="_blank"}.

Documentation will be published under the [CC BY SA 4.0](https://github.com/honeytrap/honeytrap-docs/blob/master/LICENSE) license.

{% endcapture %}

{% capture steps %}

## Creating a fork of the HoneyTrap documentation repository

1. Go to the
[honeytrap/honeytrap-docs](https://github.com/honeytrap/honeytrap-docs){: target="_blank"}
repository.

1. In the upper-right corner, click **Fork**. This creates a copy of the
HoneyTrap documentation repository in your GitHub account. The copy
is called a *fork*.

## Making your changes

1. In your GitHub account, in your fork of the HoneyTrap docs, create
a new branch to use for your contribution.

1. In your new branch, make your changes and commit them. If you want to
[write a new topic](/docs/home/contribute/write-new-topic/),
choose the
[page type](/docs/home/contribute/page-templates/)
that is the best fit for your content.

## Submitting a pull request to the master branch (Current Release)

If you want your change to be published in the released version HoneyTrap docs,
create a pull request against the master branch of the HoneyTrap
documentation repository.

1. In your GitHub account, in your new branch, create a pull request
against the master branch of the honeytrap/honeytrap-docs
repository. This opens a page that shows the status of your pull request.

1. Click **Show all checks**. Wait for the **deploy/netlify** check to complete.
To the right of **deploy/netlify**, click **Details**. This opens a staging
site where you can verify that your changes have rendered correctly.

1. During the next few days, check your pull request for reviewer comments.
If needed, revise your pull request by committing changes to your
new branch in your fork.

<!--
## Submitting a pull request to the &lt;vnext&gt; branch (Upcoming Release)

If your documentation change should not be released until the next release of
the Kubernetes product, create a pull request against the &lt;vnext&gt; branch
of the Kubernetes documentation repository. The &lt;vnext&gt; branch has the
form `release-<version-number>`, for example release-1.5.

1. In your GitHub account, in your new branch, create a pull request
against the &lt;vnext&gt; branch of the kubernetes/website
repository. This opens a page that shows the status of your pull request.

1. Click **Show all checks**. Wait for the **deploy/netlify** check to complete.
To the right of **deploy/netlify**, click **Details**. This opens a staging
site where you can verify that your changes have rendered correctly.

1. During the next few days, check your pull request for reviewer comments.
If needed, revise your pull request by committing changes to your
new branch in your fork.

The staging site for the upcoming Kubernetes release is here:
[http://kubernetes-io-vnext-staging.netlify.com/](http://kubernetes-io-vnext-staging.netlify.com/).
The staging site reflects the current state of what's been merged in the
release branch, or in other words, what the docs will look like for the
next upcoming release. It's automatically updated as new PRs get merged.
-->

<!-- ## Pull request review process for both Current and Upcoming Releases -->

## Pull request review process for current release

Once your pull request is created, a HoneyTrap reviewer will take responsibility for providing clear, actionable feedback.  As the owner of the pull request, **it is your responsibility to modify your pull request to address the feedback that has been provided to you by the HoneyTrap reviewer.**  Also note that you may end up having more than one HoneyTrap reviewer provide you feedback or you may end up getting feedback from a HoneyTrap reviewer that is different than the one originally assigned to provide you feedback.  Furthermore, in some cases, one of your reviewers might ask for a technical review from a [HoneyTrap tech reviewer](https://github.com/honeytrap/honeytrap-docs/wiki/Tech-reviewers) when needed.  Reviewers will do their best to provide feedback in a timely fashion but response time can vary based on circumstances.

{% endcapture %}

{% capture whatsnext %}
* Learn more about [Writing a New Topic](/docs/home/contribute/write-new-topic/)
* Learn more about [Staging Your Documentation Changes](/docs/home/contribute/stage-documentation-changes/)
* Learn more about [Using Page Templates](/docs/home/contribute/page-templates/)
* Learn more about [Documentation Style Guide](/docs/home/contribute/style-guide/)
{% endcapture %}

{% include templates/task.md %}
