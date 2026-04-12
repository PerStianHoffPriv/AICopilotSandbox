# Copilot CLI Sandbox — AI Akademiet

Et trygt, isolert miljø for å bruke **GitHub Copilot CLI** på kurset. Alt AI-en
gjør skjer inne i en container på maskinen din — den kan ikke se eller endre
filene dine utenfor sandboxen. Hvis noe går galt kan du nullstille hele miljøet
på under ett minutt.

---

## Før kurset (gjør dette hjemmefra — tar ca 15 minutter)

Du trenger å installere tre ting. Én gang, og så er du ferdig.

### 1. Installer Rancher Desktop

Rancher Desktop kjører containerne dine. Det er gratis og erstatter Docker
Desktop.

- **Mac / Windows / Linux:** https://rancherdesktop.io/ → klikk "Download"
- Følg installasjonsveiviseren.
- Åpne Rancher Desktop første gang. I oppsettet:
  - **Container Engine:** velg **`dockerd (moby)`** (ikke `containerd`)
  - **Kubernetes:** kan skrus av (trengs ikke her)
- La Rancher Desktop stå og kjøre i bakgrunnen. Du ser ikonet i menylinjen
  (Mac) eller i systemstatusfeltet (Windows).

### 2. Installer Visual Studio Code

https://code.visualstudio.com/ → last ned og installer for ditt OS.

### 3. Installer Dev Containers-utvidelsen i VS Code

1. Åpne VS Code.
2. Klikk på **Extensions**-ikonet i venstre sidemeny (ser ut som fire firkanter).
3. Søk etter: **Dev Containers**
4. Klikk **Install** på utvidelsen fra Microsoft.

### 4. (Anbefalt) Test at alt virker

1. I VS Code, trykk **Ctrl+Shift+P** (Windows/Linux) eller **Cmd+Shift+P** (Mac).
2. Skriv: `Dev Containers: Try a Dev Container Sample`
3. Velg et hvilket som helst sample.
4. Hvis VS Code åpner en container uten feil — du er klar for kurset.

> **Står du fast?** Svar på pre-kurs-e-posten eller ta kontakt i Slack-kanalen
> vi har satt opp. Det er mye lettere å fikse hjemmefra enn på kursdagen.

---

## På kursdagen (3 steg)

1. **Start Rancher Desktop** (hvis den ikke allerede kjører).
2. **Åpne VS Code.**
3. Trykk **Ctrl+Shift+P** (eller **Cmd+Shift+P** på Mac) og velg:

   `Dev Containers: Clone Repository in Container Volume`

4. Lim inn denne URL-en og trykk Enter:

   ```
   https://github.com/PerStianHoffPriv/AICopilotSandbox.git
   ```

5. Logg inn på GitHub hvis den spør.
6. Vent 2–3 minutter mens containeren bygges (første gang tar litt lengre tid).
7. Når den integrerte terminalen dukker opp nederst, skriv:

   ```
   copilot
   ```

8. Følg device-login (åpne lenken som vises, skriv inn koden, logg inn med
   GitHub-kontoen din).
9. **Ferdig.** Spør AI-en om hva du vil — be den bygge ting, hente data fra
   REST API-er, løse oppgaver.

---

## Hvis AI-en gjør noe rart, eller du vil starte på nytt

Helt trygt — miljøet er isolert fra din egen maskin. Slik får du et helt ferskt
miljø på under ett minutt:

1. Trykk **Ctrl+Shift+P** / **Cmd+Shift+P**
2. Velg: **Dev Containers: Rebuild Container Without Cache**
3. Vent ~30 sekunder. Rent miljø.

Vil du være ekstra grundig? Lukk VS Code-vinduet, så gå til Rancher Desktop →
**Containers** → slett containeren → og gjenta "Clone Repository in Container
Volume"-steget over.

---

## Hva kan jeg gjøre i sandboxen?

Alt Copilot CLI kan. For eksempel:

- "Lag en liten Node-app som henter Pokémon-data fra pokeapi.co og viser dem i
  terminalen"
- "Skriv et Python-script som leser en CSV og plotter en graf"
- "Bygg en enkel Express-server med tre endepunkter"
- "Hent dagens vær fra en gratis API og fortell meg om jeg trenger paraply"

AI-en har full internettilgang i sandboxen, så den kan gjøre research, laste
ned pakker, og kalle REST API-er.

---

## Hva er IKKE tilgjengelig i sandboxen?

- Filer på din egen maskin (dette er poenget — vi holder dem trygge)
- USB-enheter, skrivere, mikrofon osv.
- Programmer du har installert på verts-PC-en din

Alt du vil bruke må installeres inne i containeren via `npm`, `pip`, `apt`
osv. — og alt det der kan Copilot CLI hjelpe deg med.

---

## Krav

- GitHub-konto med Copilot aktivert
- En moderne PC (Mac, Windows 10/11, eller Linux) med ~8 GB RAM
