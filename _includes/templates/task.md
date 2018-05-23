{% if overview %}

{{ overview }}

{% else %}

{% include templates/_errorthrower.md missing_block='overview' purpose='states, in one or two sentences, the purpose of this document' %}

{% endif %}


* TOC
{: toc}


{% if prerequisites %}

## Before you begin

{{ prerequisites }}

{% else %}

{% endif %}


{% if steps %}

{{ steps }}

{% else %}

{% include templates/_errorthrower.md missing_block='steps' purpose='lists a sequence of numbered steps that accomplish the task.' %}

{% endif %}


{% if discussion %}

{{ discussion }}

{% else %}

{% endif %}


{% if whatsnext %}

## What's next

{{ whatsnext }}

{% endif %}
