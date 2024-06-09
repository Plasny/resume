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
    - time: od września 2023
      name: Wolontariusz Specjalista IT -- Biuro KSM Archidiecezji Krakowskiej
      description: >
        Konfiguracja serwera wirtualizacji [Proxmox VE](https://www.proxmox.com/en/proxmox-virtual-environment/overview). Ustawienie
        [Wireguard VPN](https://www.wireguard.com/) co umożliwiło pracę zdalną
        pracownikom biura. Przeniesienie trzech stron internetowych na serwer
        lokalny co poskutkowało zmniejszeniem kosztów związanych z ich
        hostingiem o 88%.

    - time: grudzień 2022
      name: Praktykant -- [ZeroDowntime](https://zdt.io)
      description: >
        Napisanie terraformowego modułu do automatyzacji zarządzania
        użytkownikami na platformie AWS w otwarto-źródłowym projekcie OPSd-io.

    - time: maj 2022
      name: Praktykant -- [Cisco](https://www.cisco.com)
      description: >
        Zapoznanie się z technologiami Cisco. Przejście szkolenia
        wprowadzającego do CCNA.

    - time: sierpień 2021--maj 2022
      name: Stażysta -- [ZeroDowntime](https://zdt.io)
      description: >
        Konfiguracja sieci i serwera NAS. Napisanie narzędzia do w pełni
        zautomatyzowanej instalacji i konfiguracji systemu Linux po sieci.
        Konfiguracji trzech lokalnych instancji
        [Openstack-a](https://www.openstack.org) z wykorzystaniem wcześniej
        wspomnianego narzędzia.
      attachments:
        - name: Docker Netboot v2
          icon_type: fab
          icon: git-alt
          link: https://gitlab.com/Plasny/docker_netboot
        - name: Openstack Deployment
          icon_type: fab
          icon: git-alt
          link: https://gitlab.com/Plasny/openstack_deployment


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
    - name: Ogólnopolskie Zawody Techniczne "Primus Inter Pares" (hackathon)
      time: styczeń--luty 2024
      description: >
        Napisanie backendu komunikatora tekstowego, którego użytkownicy
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
    - name: Motorola Science Cup (hackathon)
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
      description: |
        Opanowanie umiejętności i zdobycie wiedzy z zakresu:
          - tworzenia i administrowania aplikacji internetowych
          - tworzenia i administrowania stronami WWW
          - projektowania baz danych i administrowania nimi
          - projektowania i wykonywania lokalnej sieci komputerowej
          - konfigurowania urządzeń sieciowych, routerów, serwerów
          - administrowania sieciowymi systemami operacyjnymi
          - naprawy i diagnostyki usterek sprzętu komputerowego
          - montażu oraz eksploatacji komputera i urządzeń peryferyjnych

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
      - [C1 Advanced -- Score 200 (Cambridge English: Advanced)](/certs/cae.pdf)
      - [Cisco Certified Network Associate (CCNA)](https://www.credly.com/badges/868aff0c-dac4-4349-88f8-50447dfa36e3/public_url)

  - title: skills
    contents: |
      - angielski na poziomie C2
      - aplikacje serwerowe: Python (Flask), Golang, Java (SpringBoot, Spark), Node.js (Express)
      - bazy danych: SQL (Postrgresql, MySQL)
      - aplikacje webowe: HTML, CSS, JavaScript/TypeScript (React)
      - aplikacje mobilne: React Native, Kotlin
      - automatyzacja, devops: Ansible, Terraform, Shell Scripts, Makefiles, Nix
      - samodzielność w wykonywaniu zadań
      - praca zespołowa i umiejętność zarządzanie małym zespołem
      - szybkość w zdobywaniu nowych umiejętności
      - wystąpienia publiczne

  - title: Kwalifikacje
    no_translate: true 
    contents: |
      - INF.03. Tworzenie i administrowanie stronami i aplikacjami
        internetowymi oraz bazami danych
      - INF.02 Administracja i eksploatacja systemów komputerowych,
        urządzeń peryferyjnych i lokalnych sieci komputerowych

  - title: courses
    contents: |
      - Rust The Chain (Rust i Solana Blockchain) w ZSŁ
      - Harvard CS50 na freeCodeCamp.org
      - DevOps Engineer na platformie strefakursów.pl
      - Kurs Androida w ZSŁ

  - title: Uprawnienia
    no_translate: true 
    contents: |
      - Prawo jazdy kat. B
      - SEP -- stan. EKSPLOATACJI

  - title: interests 
    contents: |
      - żeglowanie
      - wspinaczka górska
      - muzyka harfowa i handpanowa
      - zagadnienia psychologiczne i informatyczne
 
---

Szukam miejsca, w którym będę mógł dalej zdobywać wiedzę i rozwijać swoje
umiejętności tworzenia systemów, programowania i automatyzowania rozwiązań.

