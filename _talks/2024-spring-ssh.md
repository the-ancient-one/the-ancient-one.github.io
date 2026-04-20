---
title: "SSH Certificates (Jumphost DMZ System)"
collection: teaching
type: "2nd year Undergraduate course"
permalink: /teaching/2024-spring-ssh
venue: "University of Warwick, WMG"
date: 2024-03-13
location: "Coventry, UK"
---

It was a privilege to engage with second-year Cyber Security undergraduate students at WMG, University of Warwick, in a session focused on SSH certificate-based remote access and the design of a jumphost-based access solution for enterprise environments.

A strong emphasis throughout the session was placed on practical application. Rather than presenting SSH certificates only as a theoretical security concept, I used the session to show how they can be applied in realistic enterprise scenarios to strengthen access control, simplify key management, and support more scalable and auditable remote administration. The discussion was grounded in the kinds of challenges practitioners face when managing privileged access across segmented environments such as DMZs, administrative zones, and controlled remote access pathways.

The session combined conceptual explanation with a live, hands-on demonstration using a lightweight containerised lab environment. This practical setup modelled the key components of the solution, including an SSH client, an SSH server, and a certificate-signing workflow, mirroring the kind of structured access design that is often required in operational settings. The accompanying repository and presentation materials were built around this demo environment, including Docker-based client and server components together with the slides used in the session. [1](https://github.com/the-ancient-one/ssh_certificate_talk)[2](https://github.com/the-ancient-one/ssh_certificate_talk/blob/main/docker-compose.yml)

During the demonstration, I walked students through the end-to-end certificate workflow: generating a certificate authority (CA) key pair, creating a client key pair, signing the user public key with appropriate SSH certificate options, verifying the issued certificate, establishing trust in the CA, and successfully authenticating to the destination host using certificate-based access. The repository also documents this practical sequence, including certificate verification and trusted CA configuration, which helped reinforce the applied nature of the session.

What made the session especially meaningful for me was the opportunity to bring professional experience into the classroom, even while I was an MSc student myself. I drew on real-world perspectives from industry practice to frame the topic not simply as a lab exercise, but as a security design problem that organisations must solve in a controlled, scalable, and operationally manageable way. This allowed me to connect academic learning with professional reality, giving students an example of how classroom concepts translate into enterprise decision-making, implementation choices, and day-to-day security operations.

I wanted students to leave not only with an understanding of how SSH certificates work, but also with a clearer appreciation of why these approaches matter in practice: reducing the overhead of managing authorised keys, enabling tighter control over privileged access, supporting temporary and restricted authentication, and creating a more structured model for administering systems in sensitive network zones. The session therefore aimed to bridge theory and practice, showing how security engineering concepts can be applied in ways that are both technically sound and operationally relevant.

Overall, the session provided students with both a conceptual foundation and a practical demonstration of how certificate-driven SSH access can support stronger operational control in enterprise settings, while also opening discussion around hardening, trust distribution, certificate validity, and restrictions on capabilities such as forwarding. The repository was explicitly prepared as a demo and test environment rather than a production deployment, which also helped frame useful discussion around the differences between proof-of-concept implementation and production-ready security design. [1](https://github.com/the-ancient-one/ssh_certificate_talk)[3](https://github.com/the-ancient-one/ssh_certificate_talk/releases)

Slides and other artefacts from the session, including the demo repository, can be found in [repo](https://github.com/the-ancient-one/ssh_certificate_talk/){:target="_blank"}.