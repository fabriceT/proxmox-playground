# TACOS con tofu

C'est un bac à sable, une salle de jeux ou `escape game` pour tester comment gérer ma petite instance proxmox avec du code.

Il contient du code ~~terraform~~ HCL généré le plus souvent par [terramate](https://terramate.io) qui va passer dans les mains expertes d'[opentofu](https://opentofu.org/). Enfin, c'est l'idée.

J'ai ignoré les fichiers contenant les secrets permettant d'accéder à l'instance proxmox. De toute façon, elle n'est pas ouverte sur le ternet et elle est le plus souvent éteinte. :D 

**Note à moi-même**: J'espère continuer à conserver ces informations secrètes.

Pourquoi TACOS con tofu ?

  + TACOS: **T**erraform **A**utomation and **C**ollaboration **s**oftware. C'est expliqué [là](https://terramate.io/docs/why-terramate#the-purpose-built-ci-cd-approach-%F0%9F%A4%91).
  + Tofu: C'est Opentofu, le fils légitime de terraform d'HASHICORP qui a basculé du côté obscur de l'open-source pour glisser dans l'[openwashing](https://fr.wikipedia.org/wiki/Openwashing) en acceptant IBM comme mâle dominant.



