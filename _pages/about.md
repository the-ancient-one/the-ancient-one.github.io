---
permalink: /
title: "About Me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<!-- <div id="greeting-container">
  <span id="greeting"></span> - 
  <span id="language"></span> 
  <span id="hand-wave">👋</span>
</div>  -->

I am a **Security Engineering Specialist** in the **Cyber Security Centre at the University of Warwick**, where I design and deliver security and software engineering teaching across undergraduate modules while also contributing to the development of practical engineering infrastructure that supports cyber security education. In my current role, I lead delivery across multiple modules covering programming, secure SDLC, DevSecOps, and Linux-based practical engineering, with a strong emphasis on applied, engineering-led learning.

My professional background spans **security engineering, platform engineering, DevSecOps, and large-scale operational systems**, with experience across the **University of Warwick**, **Flipkart**, **BT Group**, and earlier software engineering roles in enterprise technology environments. 

Across industry roles, I have worked at the intersection of **secure platform operations and engineering delivery**. This has included supporting DNS services handling 10B+ queries per month, building privileged-access automation using HashiCorp Vault and SSH certificate-based access in DMZ environments, and designing TLS/SSL certificate lifecycle processes across 600+ certificates and 4,000+ domains. Earlier work also included application migration, CI/CD modernisation, systems design, and resilience engineering in regulated enterprise settings.

I hold an **MSc in Cyber Security Engineering (First Class with Distinction)** from the **University of Warwick**, aligned with NCSC and BCS accreditation frameworks. My master’s thesis focused on post-quantum cryptography and privacy-enhancing technologies, including secure messaging and zero-knowledge–oriented approaches. I also hold a **Bachelor’s degree in Mechanical Engineering**,  where I worked on the performance analysis of smart journal-bearing systems, an area relevant to semi-active control of bearing behaviour. The work used 3-D computational fluid dynamics (CFD) to model hydrodynamically lubricated bearings with Bingham-type non-Newtonian fluids, including electro-rheological and magneto-rheological lubrication behaviour.

My work and interests focus on:
- Cloud native Secure SDLC and DevSecOps practices  
- CI/CD and GitOps-based platform design  
- Cloud and hybrid infrastructure migration  
- DNS, PKI, and certificate lifecycle management at scale  
- Post-quantum and applied cryptography  
- Hands-on, engineering-led cyber security education  

What connects my work across both industry and academia is a consistent focus on making systems **more resilient, more secure, and easier to operate at scale**. I am particularly interested in how sound engineering practice shapes modern security architecture, especially in areas such as secure-by-default infrastructure, platform governance, hybrid cloud security posture, and zero-trust-oriented design.

<script>
  const greetings = [
    {"language":"English","greeting":"Hey"},
    {"language":"Old English","greeting":"Wes hāl"},
    {"language":"Pirate","greeting":"Ahoy"},
    {"language":"Pig Latin","greeting":"ello-hay"},
    {"language":"Morse Code","about":"https://en.wikipedia.org/wiki/Morse_code","greeting":".... . .-.. .-.. ---"},
    {"language":"Braille","about":"https://en.wikipedia.org/wiki/Braille","greeting":"⠓⠑⠇⠇⠕"},
    {"language":"Esperanto","about":"https://en.wikipedia.org/wiki/Esperanto","greeting":"Saluton"},
    {"language":"Catalan","greeting":"Hola"},
    {"language":"Chichewa","greeting":"Moni"},
    {"language":"Chinese (Simplified)","greeting":"您好"},
    {"language":"Chinese (Traditional)","greeting":"您好"},
    {"language":"Corsican","greeting":"Bonghjornu"},
    {"language":"Croatian","greeting":"zdravo"},
    {"language":"Czech","greeting":"Ahoj"},
    {"language":"Danish","greeting":"Hej"},
    {"language":"Dutch","greeting":"Hallo"},
    {"language":"Estonian","greeting":"Tere"},
    {"language":"Finnish","greeting":"Hei"},
    {"language":"French","greeting":"Bonjour"},
    {"language":"Galician","greeting":"Ola"},
    {"language":"Georgian","about":"https://en.wikipedia.org/wiki/Georgia_(country)","greeting":"გამარჯობა"},
    {"language":"German","greeting":"Hallo"},
    {"language":"Greek","greeting":"Γεια σας"},
    {"language":"Haitian Creole","greeting":"Bonjou"},
    {"language":"Hausa","greeting":"Sannu"},
    {"language":"Hawaiian","about":"https://en.wikipedia.org/wiki/Hana_Highway","greeting":"Alohaʻoe"},
    {"language":"Hebrew","greeting":"שלום"},
    {"language":"Hmong","about":"https://en.wikipedia.org/wiki/Hmong_people","greeting":"Nyob zoo"},
    {"language":"Hungarian","greeting":"Helló"},
    {"language":"Icelandic","greeting":"Halló"},
    {"language":"Igbo","about":"https://en.wikipedia.org/wiki/Igboland","greeting":"Ndewo"},
    {"language":"Indonesian","greeting":"Halo"},
    {"language":"Irish","greeting":"Dia duit"},
    {"language":"Italian","greeting":"Ciao"},
    {"language":"Japanese","greeting":"こんにちは"},
    {"language":"Kazakh","greeting":"Сәлем"},
    {"language":"Khmer","greeting":"ជំរាបសួរ"},
    {"language":"Kyrgyz","greeting":"салам"},
    {"language":"Lao","greeting":"ສະບາຍດີ"},
    {"language":"Latin","greeting":"salve"},
    {"language":"Latvian","greeting":"Labdien"},
    {"language":"Lithuanian","greeting":"Sveiki"},
    {"language":"Luxembourgish","greeting":"Moien"},
    {"language":"Macedonian","greeting":"Здраво"},
    {"language":"Maori","greeting":"Hiha"},
    {"language":"Myanmar (Burmese)","greeting":"မင်္ဂလာပါ"},
    {"language":"Norwegian","greeting":"Hallo"},
    {"language":"Pashto","about":"https://en.wikipedia.org/wiki/Pashtuns","greeting":"سلام"},
    {"language":"Persian","greeting":"سلام"},
    {"language":"Polish","greeting":"Cześć"},
    {"language":"Portuguese","greeting":"Olá"},
    {"language":"Romanian","greeting":"Alo"},
    {"language":"Russian","greeting":"привет"},
    {"language":"Samoan","greeting":"Talofa"},
    {"language":"Slovak","greeting":"ahoj"},
    {"language":"Slovenian","greeting":"Pozdravljeni"},
    {"language":"Spanish","greeting":"Hola"},
    {"language":"Sundanese","greeting":"halo"},
    {"language":"Swahili","greeting":"Sawa"},
    {"language":"Swedish","greeting":"Hallå"},
    {"language":"Tajik","greeting":"Салом"},
    {"language":"Thai","greeting":"สวัสดี"},
    {"language":"Turkish","greeting":"Merhaba"},
    {"language":"Ukranian","greeting":"Здрастуйте"},
    {"language":"Uzbek","greeting":"Salom"},
    {"language":"Vietnamese","greeting":"Xin chào"},
    {"language":"Welsh","greeting":"Helo"},
    {"language":"Xhosa","greeting":"Sawubona"},
    {"language":"Yiddish","greeting":"העלא"},
    {"language":"Yoruba","about":"https://en.wikipedia.org/wiki/Yorubaland","greeting":"Kaabo"},
    {"language":"Zulu","greeting":"Sawubona"}
  ];

  function getRandomGreeting() {
    const randomIndex = Math.floor(Math.random() * greetings.length);
    return greetings[randomIndex];
  }

  const randomGreeting = getRandomGreeting();
  document.getElementById('greeting').innerText = randomGreeting.greeting;
  document.getElementById('language').innerText = randomGreeting.language;
</script>