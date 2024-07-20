---
title: CV
date: 2024-05-18T08:19:23+02:00
draft: false
type: resume
layout: resume

params:
  big_lists:
  - title: work_experience
    icon: briefcase
    contents:
    - time: od czerwca 2024
      name: Back-end Developer -- [Quickchannel](https://quickchannel.com)
      description: >
        Rozwijanie platformy wideo napisanej w języku Python.

    - time: wrzesień 2023 - maj 2024
      name: Specjalista IT -- Biuro KSM Archidiecezji Krakowskiej
      description: >
        Zarządzanie serwerem [Proxmox VE](https://www.proxmox.com/en/proxmox-virtual-environment/overview),
        przeniesienie stron internetowych, które poskutkowało ograniczeniem
        kosztów hostingu o 88%.

    - time: grudzień 2022
      name: Praktykant -- [ZeroDowntime](https://zdt.io)
      description: >
        Terraformowe moduły dla platformy AWS.

    - time: maj 2022
      name: Praktykant -- [Cisco](https://www.cisco.com)
      description: >
        Technologie Cisco, CCNA bootcamp.

    - time: sierpień 2021--maj 2022
      name: Stażysta -- [ZeroDowntime](https://zdt.io)
      description: >
        Automatyzacja instalcji systemu Linux po sieci. Konfiguracja sieci.
        Postawienie 3 instancji [Openstack-a](https://www.openstack.org).
      attachments:
        - name: Docker Netboot v2
          icon_type: fab
          icon: git-alt
          link: https://gitlab.com/Plasny/docker_netboot
        - name: Openstack Deployment
          icon_type: fab
          icon: git-alt
          link: https://gitlab.com/Plasny/openstack_deployment


    # todo: zmienić na osiągnięcia i inicjatywy, pełne zdania, krócej!!!
  - title: other_experience
    icon: laptop-code
    contents:
    # - name: Solana Coloseum Hackathon
    #   time: luty - kwiecień 2024
    #   attachments:
    #   - name: Repozytorium
    #     link: https://github.com/NikodemMarek/solana-coloseum-hackathon
    #     icon_type: fab
    #     icon: git-alt
    #   - name: Demo Site
    #     link: https://nikodemmarek.github.io/solana-coloseum-hackathon
    #     icon: link
    - name: Ogólnopolskie Zawody Techniczne "Primus Inter Pares"
      time: styczeń--luty 2024
      description: >
        Backendu komunikatora tekstowego, którego użytkownicy
        byli uwierzytelniani z serwerem LDAP/AD. Przygotowanie bazy danych,
        infrastruktury i dokumentacji.
      attachments:
      - name: Repozytorium
        link: https://github.com/MrJujek/gda
        icon_type: fab
        icon: git-alt
      - name: Dokumentacja API
        link: https://github.com/MrJujek/gda/blob/main/docs/ServerAPI.md
        icon: book
    - name: Hackathon Hackyeah
      time: październik 2023
      description: >
        Zarządzanie zespołem i podział obowiązków. Pisanie backendu
        wyszukiwarki studiów wspomaganej sztuczną inteligencją w `Go`. Praca z
        embeddingiem tekstu z LLM i przygotowanie bazy danych.
      attachments:
      - name: Repozytorium
        link: https://github.com/HackYeah2023-Nikodem-sAngels/task
        icon_type: fab
        icon: git-alt
      - name: Demo Video
        link: https://drive.google.com/file/d/1O5GXBSNBFFEa5k6DFuiVY1d4OO6zSXNy/view
        icon: file-video
    - name: Motorola Science Cup
      time: luty--marzec 2022
      description: >
        Przygotowanie repozytoriów, praca nad symulatorem bramek logicznych w
        `C`, dokumentowanie postępów i działania.
      attachments:
      - name: Repozytoria
        link: https://github.com/Inf512-MotorolaScienceCup
        icon_type: fab
        icon: git-alt

  - title: education
    icon: graduation-cap
    contents:
    - time: od 2024
      name: > 
        Cyberbezpieczeństwo --
         [Akademia Górniczo--Hutnicza im. Stanisława Staszica w Krakowie](https://agh.edu.pl/)

    - time: 2019--2024
      name: >
        Technik Informatyk --
         [Zespół Szkół Łączności im. Obrońców Poczty Polskiej w Gdańsku w Krakowie](https://tl.krakow.pl/)

      attachments:
      - name: Projekty programistyczne z lat 2022--2024
        link: https://github.com/Plasny/zsl
        icon_type: fab
        icon: git
      - name: Sprawozdania z lat 2019--2021
        link: zsl
        icon: folder-tree

  - title: awards
    icon: trophy
    contents:
    - name: Finalista Olimpiady Liderów Telekomunikacji i Informatyki POLTELEINFO
      time: maj 2024
      attachments:
      - name: Wyniki III Etapu
        link: https://polteleinfo.edu.pl/files/POLTELEINFO_III_ETAP_all_2023_2024_korekta.pdf
        icon: file-pdf
    - name: Finalista Olimpiady Innowacji Technicznych w Telekomunikacji i Informatyce (PZSWiR)
      time: maj 2023
      attachments:
      - name: Lista finalistów
        link: https://pzswir.pl/pliki/Olimpiada/OTiI/2022_23/finalisci_bp.pdf
        icon: file-pdf

  small_lists:
  - title: certyfications
    contents: |
      - [CAE -- C1 Advanced (Cambridge English: Advanced)](/certs/cae.pdf)
      - [Cisco Certified Network Associate (CCNA)](https://www.credly.com/badges/868aff0c-dac4-4349-88f8-50447dfa36e3/public_url)

  - title: skills
    contents: |
      - aplikacje serwerowe: Python, Golang, Java (SpringBoot, Spark), Node.js (Express)
      - bazy danych: SQL (Postrgresql, MySQL)
      - aplikacje webowe: HTML, CSS, JavaScript/TypeScript (React)
      - aplikacje mobilne: React Native, Kotlin
      - automatyzacja, devops: Ansible, Terraform, Shell Scripts, Makefiles, Nix, Openstack
      - samodzielność, praca zeposłowa, przemówienia publiczne
      - angielski na poziomie C1

  - title: Kwalifikacje
    no_translate: true 
    contents: |
      - INF.03. Tworzenie i administrowanie stronami i aplikacjami
        internetowymi oraz bazami danych
      - INF.02 Administracja i eksploatacja systemów komputerowych,
        urządzeń peryferyjnych i lokalnych sieci komputerowych

  # - title: courses
  #   contents: |
  #     - Rust The Chain (Rust i Solana Blockchain) w ZSŁ
  #     - Harvard CS50 na freeCodeCamp.org
  #     - DevOps Engineer na platformie strefakursów.pl
  #     - Kurs Androida w ZSŁ

  # - title: Uprawnienia
  #   no_translate: true 
  #   contents: |
  #     - Prawo jazdy kat. B
  #     - SEP -- stan. EKSPLOATACJI

  - title: interests 
    contents: |
      - żeglowanie
      - wspinaczka górska
      - muzyka harfowa i handpanowa
      - zagadnienia psychologiczne i informatyczne
 
---

Pasjonuję się technologią, eksperymentuję z nowymi narzędziami i szukam nowych
wyzwań. Wierzę, że ciągły rozwój jest kluczem do sukcesu w szybko
zmieniającym się świecie.
