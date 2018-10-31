---
title: Writing a New Topic
---

{% capture overview %}
This page shows how to create a new topic for the HoneyTrap docs.
{% endcapture %}

{% capture prerequisites %}
Create a fork of the HoneyTrap documentation repository as described in
[Creating a Documentation Pull Request](/docs/home/contribute/create-pull-request/).
{% endcapture %}

{% capture steps %}

## Choosing a page type

As you prepare to write a new topic, think about which of these page types
is the best fit for your content:

<table>

  <tr>
    <td>Task</td>
    <td>A task page shows how to do a single thing. The idea is to give readers a sequence of steps that they can actually do as they read the page. A task page can be short or long, provided it stays focused on one area. In a task page, it is OK to blend brief explanations with the steps to be performed, but if you need to provide a lengthy explanation, you should do that in a concept topic. Related task and concept topics should link to each other. <!-- For an example of a short task page, see <a href="/docs/tasks/configure-pod-container/configure-volume-storage/">Configure a Pod to Use a Volume for Storage</a>. For an example of a longer task page, see <a href="/docs/tasks/configure-pod-container/configure-liveness-readiness-probes/">Configure Liveness and Readiness Probes</a>-->.</td>
  </tr>

  <tr>
    <td>Tutorial</td>
    <td>A tutorial page shows how to accomplish a goal that ties together several HoneyTrap features. A tutorial might provide several sequences of steps that readers can actually do as they read the page. Or it might provide explanations of related pieces of code. For example, a tutorial could provide a walkthrough of a code sample. A tutorial can include brief explanations of the HoneyTrap features that are being tied togeter, but should link to related concept topics for deep explanations of individual features. A good example for this is the <a href="/docs/getting-started/">Getting Started</a> page.</td>
  </tr>

  <tr>
    <td>Concept</td>
    <td>A concept page explains some aspect of HoneyTrap. For example, a concept page might describe the HoneyTrap Listeners and explain the role it plays as part of the HoneyTrap Agent as it is configured, implemented, and tested. Typically, concept pages don't include sequences of steps, but instead provide links to tasks or tutorials. For an example of a concept topic, see the <a href="/docs/concepts/overview/what-is-honeytrap/">What is HoneyTrap</a> page.</td>
  </tr>

</table>

Each page type has a
[template](/docs/home/contribute/page-templates/)
that you can use as you write your topic.
Using templates helps ensure consistency among topics of a given type.

## Choosing a title and filename

Choose a title that has the keywords you want search engines to find.
Create a filename that uses the words in your title separated by hyphens.
For example, the page
[Writing a new topic](/docs/home/contribute/write-new-topic/)
(this page) has filename `write-new-topic.md`. An example is shown below:

       http://docs.honeytrap.io/docs/home/contribute/write-new-topic/

## Adding the topic title to the front matter

In your topic, put a `title` field in the
[front matter](https://jekyllrb.com/docs/frontmatter/).
The front matter is the YAML block that is between the
triple-dashed lines at the top of the page. Here's an example:

    ---
    title: Installing HoneyTrap Agent
    ---

## Choosing a directory

Depending on your page type, put your new file in a subdirectory of one of these:

* /docs/setup/
* /docs/concepts/
* /docs/configuration/

You can put your file in an existing subdirectory, or you can create a new
subdirectory.

## Creating an entry in the table of contents

Depending page type, create an entry in one of these files:

* /_data/setup.yaml
* /_data/concepts.yaml
* /_data/configuration.yaml

<!--
Here's an example of an entry in /_data/tasks.yaml:

    - docs/tasks/configure-pod-container/configure-volume-storage.md
-->

## Including code from another file

To include a code file in your topic, place the code file in the HoneyTrap
documentation repository, preferably in the same directory as your topic
file. In your topic file, use the `include` tag:

<pre>&#123;% include code.html language="&lt;LEXERVALUE&gt;" file="&lt;RELATIVEPATH&gt;" ghlink="/&lt;PATHFROMROOT&gt;" %&#125;</pre>

where:

* `<LEXERVALUE>` is the language in which the file was written. This must be
[a value supported by Rouge](https://github.com/jneen/rouge/wiki/list-of-supported-languages-and-lexers).
* `<RELATIVEPATH>` is the path to the file you're including, relative to the current file, for example, `sample-tut.yaml`.
* `<PATHFROMROOT>` is the path to the file relative to root, for example, `docs/tutorials/some-fancy-tutorial/sample-tut.yaml`.

Here's an example of using the `include` tag:

<pre>&#123;% include code.html language="yaml" file="sample-tut.yaml" ghlink="docs/tutorials/some-fancy-tutorial/sample-tut.yaml" %&#125;</pre>

<!--
## Showing how to create an API object from a configuration file

If you need to show the reader how to create an API object based on a
configuration file, place the configuration file in the Kubernetes documentation
repository, preferably in the same directory as your topic file.

In your topic, show this command:

    kubectl create -f https://k8s.io/<PATHFROMROOT>

where `<PATHFROMROOT>` is the path to the configuration file relative to root,
for example, `docs/tutorials/stateful-application/gce-volume.yaml`.

Here's an example of a command that creates an API object from a configuration file:

    kubectl create -f https://k8s.io/docs/tutorials/stateful-application/gce-volume.yaml

For an example of a topic that uses this technique, see
[Running a Single-Instance Stateful Application](/docs/tutorials/stateful-application/run-stateful-application/).
-->

## Adding images to a topic

Put image files in the `/images` directory. The preferred
image format is SVG.

{% endcapture %}

{% capture whatsnext %}
* Learn more about [Creating a Documentation Pull Request](/docs/home/contribute/create-pull-request/)
* Learn more about [Staging Your Documentation Changes](/docs/home/contribute/stage-documentation-changes/)
* Learn more about [Using Page Templates](/docs/home/contribute/page-templates/)
* Learn more about [Documentation Style Guide](/docs/home/contribute/style-guide/)
{% endcapture %}

{% include templates/task.md %}
