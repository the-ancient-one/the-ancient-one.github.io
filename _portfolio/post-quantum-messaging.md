---
title: "Post‑Quantum Secure Messaging System"
collection: portfolio
permalink: /portfolio/post-quantum-messaging/
author_profile: true
excerpt: "MSc dissertation on post-quantum secure messaging, focusing on hybrid authenticated key exchange and signcryption for end-to-end encrypted systems."
---

MSc dissertation project exploring a **post‑quantum secure messaging system** designed to address the emerging threat of **“Harvest Now, Decrypt Later” (HNDL)** attacks in end-to-end encrypted communication.

## Overview

With the rise of quantum computing, long-term encrypted communications face increasing risk from adversaries who may capture encrypted data today and decrypt it in the future once quantum-capable systems become available. This project investigates how modern messaging systems can transition toward **post‑quantum cryptography (PQC)** while preserving the core security guarantees expected from secure messaging platforms:

- **Confidentiality**
- **Authentication**
- **Forward Secrecy**
- **Post‑Compromise Security**
- **Non‑Repudiation**

## Research Focus

The project studied the cryptographic foundations of secure messaging systems, with particular attention to the **Signal protocol** and its supporting mechanisms such as:

- **X3DH**
- **PQXDH**
- **Double Ratchet**

While much existing work focuses on Signal-based applications such as **Signal**, **WhatsApp**, and similar platforms, this dissertation identified a research and implementation gap in relation to **Keybase**, an end-to-end encrypted messaging, identity verification, and file-sharing system.

## Key Contributions

This dissertation proposes and evaluates a **hybrid post‑quantum secure messaging approach** within the Keybase application architecture by combining:

- **Post‑quantum SC-AKE** (Signal-Conforming Authenticated Key Exchange)
- **Symmetric signcryption**
- **CRYSTALS-Kyber** for key establishment
- **CRYSTALS-Dilithium** for digital signatures

The resulting proof-of-concept application demonstrates how post‑quantum techniques can be integrated into practical secure messaging workflows, bridging the gap between **theoretical cryptographic advances** and **real-world implementation**.

## Highlights

- Designed a **hybrid post‑quantum messaging framework** for secure end-to-end communication.
- Implemented post‑quantum cryptographic primitives using **Kyber** and **Dilithium**.
- Explored the adaptation of **Signal-conforming authenticated key exchange** to a non-Signal messaging architecture.
- Investigated how PQC can preserve key messaging properties such as forward secrecy and post-compromise security.
- Built a **proof-of-concept application** to evaluate feasibility in a realistic operational setting.
- Examined the often-overlooked role of **digital signatures** in long-term conversational authenticity and trust.

## Outcome

The project demonstrates that post‑quantum secure messaging is not just a theoretical concern, but a practical systems engineering challenge. The proof-of-concept establishes a foundation for extending **Keybase-like identity verification and messaging systems** to resist future PQC threats, while also highlighting the importance of securing both **key exchange** and **digital signatures** in next-generation encrypted communication.

## Technologies / Concepts

`Post-Quantum Cryptography` · `CRYSTALS-Kyber` · `CRYSTALS-Dilithium` · `Signal Protocol` · `SC-AKE` · `Signcryption` · `End-to-End Encryption` · `Keybase` · `Secure Messaging` · `Quantum-Safe Security`