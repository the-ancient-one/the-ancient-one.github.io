---
layout: single
title: "I Built a Jira Daily Stand-up Summariser in n8n with Gemini — in About 90 Minutes"
permalink: /blog/n8n-jira-daily-standup-gemini/
author_profile: true
excerpt: "A practical write-up of building an n8n automation that reads Jira issues every morning, summarises progress and risks with Gemini, and turns board noise into a concise stand-up report."
date: 2026-04-26
categories:
  - blog
tags:
  - n8n
  - jira
  - automation
  - gemini
  - llm
  - engineering-productivity
  - devops
header:
  teaser: /assets/images/automation/jira-n8n-gemini-teaser.png
---

## Why I built this

Every morning, teams lose time scanning boards, opening tickets, and trying to turn a long list of Jira items into something that is actually useful for a stand-up. I wanted a lightweight automation that would do that work for me: pull the current board state, turn it into a concise summary, and highlight what needs attention.

So I built an **n8n automation** that:

- queries Jira issues using **JQL**,
- normalises the returned ticket data,
- builds a focused stand-up prompt,
- sends it to **Gemini** for summarisation,
- and produces a short delivery-focused report with actions and risks.

The fun part: I put the first working version together in **about 1.5 hours**, without any prior hands-on n8n experience. I mainly wanted to understand what the hype around n8n was about — and whether it could be a practical, safer, more controlled way to connect systems and LLMs without building a full custom service from scratch.

## What the workflow does

At a high level, the automation runs through the current Jira board every morning and produces a summary that answers the questions a delivery lead or engineering team usually cares about:

1. **What progress has been made?**
2. **What is currently in progress?**
3. **What are the blockers or risks?**
4. **Which tickets need attention?**
5. **What is the 60-second stand-up script?**

In the workflow I built, the summary prompt is explicitly tuned for those outcomes. The system instruction asks Gemini to act as a **delivery-focused engineering stand-up assistant** and return a factual summary structured around progress, work in progress, risks, tickets needing attention, and a concise stand-up script. That behaviour is defined directly in the configuration node of the workflow. 

## The workflow architecture

The JSON workflow is intentionally small and easy to reason about. It uses seven nodes end-to-end:

1. **Manual Trigger** – starts the workflow manually while testing.
2. **Config** – stores the Jira base URL, JQL, fields, API authentication, Gemini model, endpoint, and system prompt.
3. **Jira Search (search/jql)** – performs an HTTP GET request to Jira’s search API.
4. **Normalize Jira Issues** – extracts key issue fields into a cleaner structure.
5. **Build Standup Prompt** – converts the issue list into a plain-text prompt.
6. **Gemini Summarise** – sends the prompt to Gemini using an HTTP POST request.
7. **Extract Standup Summary** – pulls the final summary text and metadata from the model response.

That exact sequence is visible in the exported n8n JSON, including the node names, connections, and the transformation logic in the code nodes.

## How the Jira side works

The workflow uses a dedicated configuration node to define Jira settings such as:

- the **base URL**,
- the **JQL filter**,
- the **maximum number of results**,
- and the **fields** to retrieve.

In the example export, the JQL is configured as:

```text
project = "Current Project"
```

and the requested fields are:

```text
summary,status,assignee,priority,updated,labels,parent
```

That is a sensible minimal set for stand-up summarisation because it captures what a human would usually scan anyway: the issue title, current state, ownership, urgency, recency, tagging, and any parent-child relationship.

The Jira search node is implemented as an **HTTP GET** request to the Jira REST search endpoint, using a Basic Authorization header generated from the configured email and API token. The workflow also sets `Accept: application/json`, which keeps the integration simple and predictable.

## Normalising the issue data

One of the nicest design choices in the workflow is the **normalisation step**.

Instead of sending the raw Jira API response straight to the LLM, the workflow first extracts only the fields that matter:

- `key`
- `summary`
- `status`
- `assignee`
- `priority`
- `updated`
- `labels`
- `parent`

That keeps the prompt lean and reduces noise. It also means the LLM receives a cleaner and more regular structure, which usually improves summary quality.

The normalisation node also applies reasonable defaults such as **“Unknown”**, **“Unassigned”**, or **“None”** when fields are missing. That is a small touch, but it makes the downstream prompt much more robust.

## Building the stand-up prompt

The workflow then turns all normalised issues into a plain-text block, one line per ticket. Each line includes the issue key, summary, status, assignee, priority, update timestamp, and optional parent or label information.

The prompt is prefixed with:

```text
Prepare a stand-up summary from these Jira tickets.
```

If Jira returns no issues, the workflow does not fail. Instead, it generates a fallback prompt telling the model to produce a short note stating that no tickets matched the current filter. This is one of those small practical touches that makes a workflow production-friendly rather than just demo-friendly.

## Gemini integration

The summarisation step uses a plain **HTTP POST** call to Gemini rather than a specialised n8n AI abstraction. I actually like this choice because it keeps the integration explicit and inspectable.

In the workflow export, the Gemini model is set to:

```text
gemini-2.5-flash
```

The request body includes:

- a **system instruction** for summarisation behaviour,
- the user prompt containing the normalised ticket lines,
- and a generation configuration with:
  - `temperature: 0.2`
  - `maxOutputTokens: 900`

That configuration makes sense for this use case. A low temperature is generally what you want when summarising operational data: consistency matters more than creativity.

The extraction node then pulls the generated text from the response structure and captures additional metadata such as:

- `modelVersion`
- `usageMetadata`
- `finishReason`
- `generatedAt`

That is helpful if you later want observability, token monitoring, or model comparison.

## Why this worked well

A few things made this workflow effective very quickly:

### 1) The scope was tight
This was not an attempt to build an autonomous planning agent. It was a focused automation with a very clear input, transformation, and output path.

### 2) The prompt was operational, not fluffy
The summary instruction tells the model exactly what structure to return and explicitly says: **be factual** and state when data is missing.

### 3) The workflow reduced noise before calling the model
By normalising the Jira response first, the LLM only sees the information needed to build a useful stand-up note.

### 4) n8n was fast to compose
Even without prior experience, the node-based flow was easy to reason about. It felt like a practical middle ground between scripting everything yourself and giving too much freedom to a loosely controlled agent framework.

## Where I’d improve it next

The current version is already useful, but if I were taking it from proof of concept to something more production-ready, I’d extend it in a few places.

### Use scheduled execution
Right now the workflow uses a **Manual Trigger** for testing. The obvious next step is replacing that with a **cron/schedule trigger** so the report arrives automatically at a fixed time every morning.

### Store secrets properly
In the example JSON, the Jira email, API token, and Gemini API key are configured in a code node as placeholders. That is fine for a quick proof of concept, but for a real deployment I would move these into **n8n credentials** or environment variables instead of embedding them in workflow logic.

### Push the result somewhere useful
At the moment the workflow ends after extracting the summary. The next practical step would be to deliver the result to a real channel such as:

- Microsoft Teams,
- Slack,
- email,
- Confluence,
- or even a dedicated stand-up document.

### Improve prioritisation logic
The current version summarises what Jira returns. A more advanced version could pre-classify tickets before the LLM step using deterministic rules, for example:

- stale high-priority issues,
- tickets with no assignee,
- tickets updated recently but still blocked,
- issues with overdue dates,
- or work items that are in progress for too long.

### Add team-aware grouping
Another useful enhancement would be grouping the output by **assignee**, **squad**, **epic**, or **priority band** so the summary becomes even more actionable.

## The real takeaway

What I liked most about this exercise is that it proved how quickly a useful engineering automation can be built when the problem is framed clearly.

This was not a huge platform build. It was a small, focused workflow that solved a real coordination problem: turning Jira board noise into a daily summary that people can actually use.

And that is where tools like n8n become interesting. You do not need a giant agent stack or a heavy orchestration layer to get value. For the right use case, a compact workflow with a few HTTP nodes, a couple of code transforms, and a well-structured prompt is enough.

In that sense, it felt like a **controlled and safer alternative to the “let the agent do everything” approach**. You still get flexibility and speed, but the execution path remains visible, testable, and bounded.

## Example output shape

A typical output from this automation is designed to look something like this:

```text
Progress made:
- Ticket A moved to Done
- Ticket B was updated and validated

Work in progress:
- Ticket C is actively being worked on
- Ticket D is waiting on review

Risks / blockers:
- Ticket E is blocked by dependency X
- Ticket F has no assignee

Tickets needing attention:
- Ticket G is high priority and stale
- Ticket H has not been updated recently

60-second stand-up script:
Yesterday we closed A and validated B. Today the main focus is C and D. The main risks are E and F, and G/H need attention due to priority and lack of movement.
```

## Final thoughts

For a first n8n build, this was a very good proof of concept: low setup effort, quick feedback, and immediately useful output.

If you are curious about workflow automation and LLM integration, this is exactly the kind of project I would recommend building first. It is small enough to finish in an evening, practical enough to demonstrate value, and structured enough to teach good habits around data shaping, prompt design, and controlled automation.

If I continue this further, the next version will likely add scheduled execution, better secret handling, and delivery into a team communication channel so the summary arrives where people already work.
