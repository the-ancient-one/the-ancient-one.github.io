---
title: "Cryptography in the Wild (Public Key Infrastructure, Certificates)"
collection: teaching
type: "Masters Cyber Security Management and Engineering"
permalink: /teaching/2024-spring-pki
venue: "University of Warwick, WMG"
date: 2024-04-15
location: "Coventry, UK"
---

It was a privilege to engage with Master’s students from the Cyber Security Engineering and Cyber Security Management programmes at WMG, University of Warwick, in a session on Public Key Infrastructure (PKI), digital certificates, and the practical use of cryptography in real-world systems. The supporting repository for the session was prepared for Warwick MSc students in CSE and CSM and includes the presentation slides together with a Docker-based demo setup. [1](https://github.com/the-ancient-one/pki_talk)[2](https://github.com/the-ancient-one/pki_talk/blob/main/docker-compose.yml)

The session placed strong emphasis on practical application. Rather than treating PKI only as a theoretical topic, I used the session to show how digital certificates support secure communication, identity verification, and trust management in live environments. The repository materials describe PKI as a framework for secure exchange over networks, with certificates playing a central role in protocols such as SSL/TLS and S/MIME, and use Let’s Encrypt as the Certificate Authority in the example setup.  

To make the topic more tangible, I walked through a lightweight containerised environment based on Docker Compose and an Nginx Proxy Server UI, which the repository documents as a way to manage server blocks, SSL certificates, and related Nginx configuration. This allowed students to connect cryptographic ideas to practical tasks such as certificate management, service configuration, and secure deployment. [1](https://github.com/the-ancient-one/pki_talk)[2](https://github.com/the-ancient-one/pki_talk/blob/main/docker-compose.yml)

What made the session especially meaningful for me was the opportunity to bring professional experience into the classroom, even while I was still an MSc student myself. I drew on industry practice to frame the discussion around the operational realities of trust, certificate lifecycle management, and secure service delivery, helping students see how foundational cryptographic ideas translate into the kinds of systems and security decisions they are likely to encounter in practice.

Slides and other artefacts from the session can be found in the accompanying [repo](https://github.com/the-ancient-one/pki_talk){:target="_blank"}. [1](https://github.com/the-ancient-one/pki_talk)