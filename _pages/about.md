---
permalink: /
title: "About Me"
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

<div id="greeting-container">
  <span id="greeting"></span> - 
  <span id="language"></span> 
  <span id="hand-wave">👋</span>
</div> 
I am a masters student studying Cyber Security Engineering at University of Warwick, thesis project focusing around post-quantum cryptography and privacy-enhancing technologies (Zero-knowledge). 

Previous work expertise encompasses software development, systems architecture, and high-availability solutions. I have endeavoured to keep the focus on secure designs with real-world practicality and simplifying lives, which continues to be a key influence in the current role.




<script>
  const greetings = [
    {"language":"English","greeting":"Hey"},
    {"language":"Old English","greeting":"Wes hāl"},
    {"language":"Pirate","greeting":"Ahoy"},
    {"language":"Pig Latin","greeting":"ello-hay"},
    {"language":"Morse Code","about":"https://en.wikipedia.org/wiki/Morse_code","greeting":".... . .-.. .-.. ---"},
    {"language":"Braille","about":"https://en.wikipedia.org/wiki/Braille","greeting":"⠓⠑⠇⠇⠕"},
    {"language":"Esperanto","about":"https://en.wikipedia.org/wiki/Esperanto","greeting":"Saluton"},
    {"language":"Afrikaans","about":"https://en.wikipedia.org/wiki/Afrikaners","greeting":"hallo"},
    {"language":"Albanian","about":"https://en.wikipedia.org/wiki/Albania","greeting":"Përshëndetje"},
    {"language":"Amharic","about":"https://en.wikipedia.org/wiki/Amhara_people","greeting":"ሰላም"},
    {"language":"Arabic","about":"https://en.wikipedia.org/wiki/Arab_world","greeting":"مرحبا"},
    {"language":"Armenian","about":"https://en.wikipedia.org/wiki/Armenians","greeting":"Բարեւ"},
    {"language":"Azerbaijani","about":"https://en.wikipedia.org/wiki/Azerbaijanis","greeting":"Salam"},
    {"language":"Basque","about":"https://en.wikipedia.org/wiki/Basque_Country_(greater_region)","greeting":"Kaixo"},
    {"language":"Belarusian","about":"https://en.wikipedia.org/wiki/Belarus","greeting":"добры дзень"},
    {"language":"Bengali","about":"https://en.wikipedia.org/wiki/Bengal","greeting":"নমস্কার"},
    {"language":"Bosnian","greeting":"zdravo"},
    {"language":"Bulgarian","greeting":"Здравейте"},
    {"language":"Catalan","greeting":"Hola"},
    {"language":"Chichewa","greeting":"Moni"},
    {"language":"Chinese (Simplified)","greeting":"您好"},
    {"language":"Chinese (Traditional)","greeting":"您好"},
    {"language":"Corsican","greeting":"Bonghjornu"},
    {"language":"Croatian","greeting":"zdravo"},
    {"language":"Czech","greeting":"Ahoj"},
    {"language":"Danish","greeting":"Hej"},
    {"language":"Dutch","greeting":"Hallo"},
    {"language":"Esperanto","greeting":"Saluton"},
    {"language":"Estonian","greeting":"Tere"},
    {"language":"Finnish","greeting":"Hei"},
    {"language":"French","greeting":"Bonjour"},
    {"language":"Galician","greeting":"Ola"},
    {"language":"Georgian","about":"https://en.wikipedia.org/wiki/Georgia_(country)","greeting":"გამარჯობა"},
    {"language":"German","greeting":"Hallo"},
    {"language":"Greek","greeting":"Γεια σας"},
    {"language":"Gujarati","about":"https://en.wikipedia.org/wiki/Gujarati_people","greeting":"હેલો"},
    {"language":"Haitian Creole","greeting":"Bonjou"},
    {"language":"Hausa","greeting":"Sannu"},
    {"language":"Hawaiian","about":"https://en.wikipedia.org/wiki/Hana_Highway","greeting":"Alohaʻoe"},
    {"language":"Hebrew","greeting":"שלום"},
    {"language":"Hindi","greeting":"नमस्ते"},
    {"language":"Hmong","about":"https://en.wikipedia.org/wiki/Hmong_people","greeting":"Nyob zoo"},
    {"language":"Hungarian","greeting":"Helló"},
    {"language":"Icelandic","greeting":"Halló"},
    {"language":"Igbo","about":"https://en.wikipedia.org/wiki/Igboland","greeting":"Ndewo"},
    {"language":"Indonesian","greeting":"Halo"},
    {"language":"Irish","greeting":"Dia duit"},
    {"language":"Italian","greeting":"Ciao"},
    {"language":"Japanese","greeting":"こんにちは"},
    {"language":"Kannada","greeting":"ಹಲೋ"},
    {"language":"Kazakh","greeting":"Сәлем"},
    {"language":"Khmer","greeting":"ជំរាបសួរ"},
    {"language":"Kyrgyz","greeting":"салам"},
    {"language":"Lao","greeting":"ສະບາຍດີ"},
    {"language":"Latin","greeting":"salve"},
    {"language":"Latvian","greeting":"Labdien"},
    {"language":"Lithuanian","greeting":"Sveiki"},
    {"language":"Luxembourgish","greeting":"Moien"},
    {"language":"Macedonian","greeting":"Здраво"},
    {"language":"Malayalam","greeting":"ഹലോ"},
    {"language":"Maori","greeting":"Hiha"},
    {"language":"Marathi","greeting":"हॅलो"},
    {"language":"Mongolian","greeting":"Сайн байна уу"},
    {"language":"Myanmar (Burmese)","greeting":"မင်္ဂလာပါ"},
    {"language":"Nepali","greeting":"नमस्ते"},
    {"language":"Norwegian","greeting":"Hallo"},
    {"language":"Pashto","about":"https://en.wikipedia.org/wiki/Pashtuns","greeting":"سلام"},
    {"language":"Persian","greeting":"سلام"},
    {"language":"Polish","greeting":"Cześć"},
    {"language":"Portuguese","greeting":"Olá"},
    {"language":"Punjabi","greeting":"ਹੈਲੋ"},
    {"language":"Romanian","greeting":"Alo"},
    {"language":"Russian","greeting":"привет"},
    {"language":"Samoan","greeting":"Talofa"},
    {"language":"Serbian","greeting":"Здраво"},
    {"language":"Sindhi","about":"https://en.wikipedia.org/wiki/Sindh","greeting":"هيلو"},
    {"language":"Sinhala","about":"https://en.wikipedia.org/wiki/Sri_Lanka","greeting":"හෙලෝ"},
    {"language":"Slovak","greeting":"ahoj"},
    {"language":"Slovenian","greeting":"Pozdravljeni"},
    {"language":"Spanish","greeting":"Hola"},
    {"language":"Sundanese","greeting":"halo"},
    {"language":"Swahili","greeting":"Sawa"},
    {"language":"Swedish","greeting":"Hallå"},
    {"language":"Tajik","greeting":"Салом"},
    {"language":"Tamil","greeting":"வணக்கம்"},
    {"language":"Telugu","greeting":"హలో"},
    {"language":"Thai","greeting":"สวัสดี"},
    {"language":"Turkish","greeting":"Merhaba"},
    {"language":"Ukranian","greeting":"Здрастуйте"},
    {"language":"Urdu","greeting":"ہیلو"},
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