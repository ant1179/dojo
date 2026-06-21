# Plan pas-à-pas — Automatiser un projet avec Codex, skills, subagents et validation humaine

## Objectif

Mettre en place un workflow où l'humain reste maître de :

1. la spécification du besoin ;
2. la priorisation ;
3. la validation finale ;
4. les décisions produit ou architecture majeures.

Codex prend en charge autant que possible :

- analyse technique ;
- découpage des tâches ;
- implémentation ;
- tests ;
- documentation ;
- correction des erreurs CI ;
- revue automatique ;
- préparation des Pull Requests.

---

## Phase 0 — Principe de fonctionnement

Codex ne doit pas être utilisé comme un simple générateur de code. Il doit être organisé comme une chaîne de production logicielle.

Le workflow cible :

```txt
Besoin humain
  -> Spécification validée
  -> Issue GitHub
  -> Codex analyse
  -> Codex implémente
  -> Codex teste
  -> Codex documente
  -> Codex ouvre une PR
  -> CI vérifie
  -> Codex corrige si besoin
  -> Revue humaine finale
  -> Merge
```

---

## Phase 1 — Préparer le dépôt

Créer cette structure au minimum :

```txt
repo/
  README.md
  AGENTS.md
  docs/
    product-spec.md
    architecture.md
    roadmap.md
    validation-checklist.md
    decisions/
  .github/
    workflows/
      ci.yml
    ISSUE_TEMPLATE/
      feature.md
      bug.md
  .codex/
    skills/
      product-spec-review/
        SKILL.md
      architecture-review/
        SKILL.md
      backend-feature/
        SKILL.md
      frontend-feature/
        SKILL.md
      database-migration/
        SKILL.md
      qa-review/
        SKILL.md
      pr-review/
        SKILL.md
```

Objectif : rendre les skills visibles dans le repo, sous `.codex/skills/`.

---

## Phase 2 — Créer `AGENTS.md`

Créer le fichier `AGENTS.md` à la racine du repo.

```md
# AGENTS.md

## Mission de Codex

Codex est responsable de l'analyse technique, de l'implémentation, des tests, de la documentation et de la préparation des Pull Requests.

L'humain reste responsable de la spécification, de la priorisation, des décisions structurantes et de la validation finale.

## Règles générales

- Ne jamais merger directement sur `main`.
- Toujours travailler sur une branche dédiée.
- Toujours créer ou mettre à jour les tests.
- Toujours exécuter les commandes de validation avant de terminer.
- Toujours documenter les changements importants.
- Ne jamais changer la stack sans justification explicite.
- Ne jamais introduire de dépendance majeure sans validation humaine.
- Toute PR doit inclure : résumé, tests exécutés, risques connus, points à valider.

## Commandes projet

Install:
```bash
npm install
```

Dev:
```bash
npm run dev
```

Lint:
```bash
npm run lint
```

Test:
```bash
npm test
```

Build:
```bash
npm run build
```

## Format de sortie attendu pour chaque tâche

Codex doit toujours terminer par :

1. Résumé des changements
2. Fichiers modifiés
3. Tests exécutés
4. Résultat des tests
5. Risques connus
6. Points nécessitant validation humaine
```

À adapter selon la stack réelle du projet.

---

## Phase 3 — Créer les templates d'issues

### `.github/ISSUE_TEMPLATE/feature.md`

```md
# Feature

## Objectif

Décrire précisément le résultat attendu.

## Contexte utilisateur

En tant que [utilisateur], je veux [action], afin de [bénéfice].

## Critères d'acceptation

- [ ] Critère 1
- [ ] Critère 2
- [ ] Critère 3

## Contraintes

- Stack :
- Sécurité :
- Performance :
- UX :
- Compatibilité :

## Tests attendus

- [ ] Tests unitaires
- [ ] Tests d'intégration
- [ ] Tests e2e si nécessaire

## Documentation attendue

- [ ] README mis à jour si nécessaire
- [ ] Documentation API mise à jour si nécessaire
- [ ] Décision d'architecture créée si nécessaire

## Validation humaine

Décrire ce que l'humain devra vérifier manuellement avant merge.
```

### `.github/ISSUE_TEMPLATE/bug.md`

```md
# Bug

## Comportement observé

Décrire le problème.

## Comportement attendu

Décrire le résultat attendu.

## Étapes de reproduction

1.
2.
3.

## Logs / captures / contexte

Ajouter les informations utiles.

## Critères de correction

- [ ] Le bug est reproduit par un test
- [ ] Le bug est corrigé
- [ ] Les tests existants passent
- [ ] Aucun effet de bord connu
```

---

## Phase 4 — Créer les skills Codex

Les skills sont des workflows réutilisables. Chaque skill doit avoir au minimum un fichier `SKILL.md`.

Structure recommandée :

```txt
.codex/skills/<nom-du-skill>/SKILL.md
```

---

# Skill 1 — `product-spec-review`

Chemin : `.codex/skills/product-spec-review/SKILL.md`

```md
---
name: product-spec-review
description: Analyse une spécification produit, détecte les ambiguïtés et propose des critères d'acceptation exploitables.
---

# Product Spec Review

## Quand utiliser ce skill

Utilise ce skill avant toute implémentation importante.

## Objectif

Transformer une demande produit en spécification exploitable par Codex.

## Étapes

1. Lire la demande produit.
2. Identifier les ambiguïtés.
3. Reformuler le besoin en user stories.
4. Proposer des critères d'acceptation testables.
5. Identifier les contraintes techniques, UX, sécurité et données.
6. Lister les décisions nécessitant validation humaine.

## Sortie attendue

- Résumé du besoin
- User stories
- Critères d'acceptation
- Hypothèses
- Questions ouvertes
- Décisions humaines requises
```

---

# Skill 2 — `architecture-review`

Chemin : `.codex/skills/architecture-review/SKILL.md`

```md
---
name: architecture-review
description: Évalue l'architecture du projet avant une implémentation structurante.
---

# Architecture Review

## Quand utiliser ce skill

Utilise ce skill lorsqu'une tâche peut affecter l'architecture, la base de données, les API, la sécurité ou les performances.

## Étapes

1. Lire `docs/architecture.md`.
2. Identifier les composants impactés.
3. Vérifier la cohérence avec les conventions existantes.
4. Identifier les risques.
5. Proposer une approche minimale et maintenable.
6. Si nécessaire, créer une proposition dans `docs/decisions/`.

## Règles

- Ne pas changer la stack sans validation humaine.
- Préférer les changements incrémentaux.
- Documenter toute décision structurante.

## Sortie attendue

- Analyse d'impact
- Proposition technique
- Alternatives rejetées
- Risques
- Décisions à valider
```

---

# Skill 3 — `backend-feature`

Chemin : `.codex/skills/backend-feature/SKILL.md`

```md
---
name: backend-feature
description: Implémente une fonctionnalité backend avec tests, documentation et validation.
---

# Backend Feature

## Quand utiliser ce skill

Utilise ce skill pour toute modification backend : API, services, modèles, logique métier, intégrations.

## Étapes

1. Lire l'issue GitHub.
2. Lire `AGENTS.md` et `docs/architecture.md`.
3. Identifier les fichiers backend concernés.
4. Proposer un plan court.
5. Implémenter la fonctionnalité.
6. Ajouter ou mettre à jour les tests.
7. Exécuter lint, tests et build.
8. Corriger les erreurs.
9. Mettre à jour la documentation si nécessaire.
10. Préparer une PR.

## Règles

- Toujours tester les cas d'erreur.
- Ne pas modifier les contrats API sans mettre à jour la documentation.
- Ne pas introduire de dépendance majeure sans justification.

## Sortie attendue

- Résumé
- Fichiers modifiés
- Tests ajoutés
- Commandes exécutées
- Risques connus
- Points à valider
```

---

# Skill 4 — `frontend-feature`

Chemin : `.codex/skills/frontend-feature/SKILL.md`

```md
---
name: frontend-feature
description: Implémente une fonctionnalité frontend avec composants, états, intégration API et tests.
---

# Frontend Feature

## Quand utiliser ce skill

Utilise ce skill pour toute modification d'interface utilisateur.

## Étapes

1. Lire l'issue GitHub.
2. Identifier les parcours utilisateur concernés.
3. Vérifier les composants existants.
4. Implémenter l'interface.
5. Gérer les états : chargement, erreur, succès, vide.
6. Ajouter ou mettre à jour les tests.
7. Vérifier l'accessibilité de base.
8. Exécuter lint, tests et build.
9. Mettre à jour la documentation si nécessaire.
10. Préparer une PR.

## Règles

- Réutiliser les composants existants.
- Ne pas dupliquer la logique métier.
- Toujours gérer les états d'erreur et de chargement.
- Respecter les conventions UI du projet.

## Sortie attendue

- Résumé UX
- Fichiers modifiés
- Tests ajoutés
- États gérés
- Risques connus
- Points à valider visuellement
```

---

# Skill 5 — `database-migration`

Chemin : `.codex/skills/database-migration/SKILL.md`

```md
---
name: database-migration
description: Crée ou modifie une migration de base de données avec validation, rollback et tests.
---

# Database Migration

## Quand utiliser ce skill

Utilise ce skill pour toute modification de schéma, index, contrainte, seed ou migration de données.

## Étapes

1. Lire l'issue.
2. Identifier les tables et modèles impactés.
3. Proposer le changement de schéma.
4. Vérifier l'impact sur les données existantes.
5. Créer la migration.
6. Ajouter ou mettre à jour les modèles.
7. Ajouter les tests.
8. Vérifier le rollback si applicable.
9. Mettre à jour la documentation.
10. Préparer une PR.

## Règles

- Ne jamais supprimer de données sans validation humaine explicite.
- Documenter tout changement destructif.
- Prévoir la compatibilité avec les données existantes.

## Sortie attendue

- Migration créée
- Impact données
- Rollback possible ou non
- Tests exécutés
- Risques
- Validation humaine requise
```

---

# Skill 6 — `qa-review`

Chemin : `.codex/skills/qa-review/SKILL.md`

```md
---
name: qa-review
description: Analyse une fonctionnalité ou une PR sous l'angle qualité, tests, régressions et critères d'acceptation.
---

# QA Review

## Quand utiliser ce skill

Utilise ce skill avant de considérer une PR prête pour revue humaine.

## Étapes

1. Lire l'issue d'origine.
2. Lire la PR ou les changements locaux.
3. Vérifier les critères d'acceptation.
4. Identifier les tests manquants.
5. Chercher les régressions possibles.
6. Vérifier les cas limites.
7. Exécuter la suite de tests.
8. Produire une checklist de validation humaine.

## Sortie attendue

- Critères validés
- Critères non validés
- Tests présents
- Tests manquants
- Risques de régression
- Checklist de validation finale
```

---

# Skill 7 — `pr-review`

Chemin : `.codex/skills/pr-review/SKILL.md`

```md
---
name: pr-review
description: Relit une Pull Request avant validation humaine finale.
---

# PR Review

## Quand utiliser ce skill

Utilise ce skill sur chaque PR avant revue humaine.

## Étapes

1. Lire la description de la PR.
2. Lire l'issue liée.
3. Examiner les fichiers modifiés.
4. Vérifier la cohérence avec `AGENTS.md`.
5. Vérifier les tests.
6. Identifier les risques de sécurité, performance ou maintenabilité.
7. Proposer des corrections si nécessaire.

## Sortie attendue

- Verdict : prêt / non prêt
- Points bloquants
- Points non bloquants
- Tests manquants
- Risques
- Recommandation de validation humaine
```

---

## Phase 5 — Faire apparaître les skills à Codex

Une fois les dossiers créés, demander à Codex :

```txt
Analyse les skills disponibles dans `.codex/skills/`.
Liste chaque skill avec :
- son nom ;
- son objectif ;
- quand l'utiliser ;
- les fichiers qu'il contient.

Ne modifie aucun fichier.
```

Ensuite :

```txt
À partir de maintenant, utilise automatiquement le skill le plus adapté pour chaque tâche.
Si plusieurs skills sont pertinents, indique lesquels tu utilises et pourquoi.
Respecte toujours `AGENTS.md`.
```

---

## Phase 6 — Utiliser des subagents explicitement

Les subagents doivent être demandés explicitement pour les tâches complexes.

Prompt type :

```txt
Analyse cette issue avec 4 subagents en parallèle :

1. `architecte` : analyse l'impact architecture.
2. `backend` : analyse les changements backend nécessaires.
3. `frontend` : analyse les changements frontend nécessaires.
4. `qa` : identifie les tests et risques de régression.

Chaque subagent doit retourner :
- analyse ;
- fichiers probablement concernés ;
- risques ;
- recommandations.

Ensuite, consolide leurs résultats dans un plan d'implémentation unique.
Ne code pas encore.
```

Après validation humaine :

```txt
Implémente le plan validé.
Utilise les skills pertinents dans `.codex/skills/`.
Travaille sur une branche dédiée.
Ajoute les tests.
Lance lint, test et build.
Prépare une PR avec résumé, tests exécutés, risques connus et points à valider.
```

---

## Phase 7 — Branches et PR

Convention recommandée :

```txt
feature/<issue-number>-short-name
bugfix/<issue-number>-short-name
chore/<issue-number>-short-name
```

Format de PR attendu :

```md
## Résumé

## Issue liée

Closes #...

## Changements

- 
- 

## Tests exécutés

- [ ] lint
- [ ] tests
- [ ] build

## Risques connus

## Points à valider humainement

## Captures / exemples si applicable
```

---

## Phase 8 — CI minimale

Créer `.github/workflows/ci.yml`.

Exemple Node.js à adapter :

```yaml
name: CI

on:
  pull_request:
  push:
    branches: [main]

jobs:
  validate:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-node@v4
        with:
          node-version: 20
          cache: npm

      - run: npm install
      - run: npm run lint
      - run: npm test
      - run: npm run build
```

---

## Phase 9 — MCP : à ajouter progressivement

Ne pas connecter tous les outils dès le début.

Ordre recommandé :

```txt
Niveau 1 — utile rapidement
- GitHub
- documentation projet

Niveau 2 — utile si produit visuel ou données
- Figma
- base de données de développement
- navigateur / browser tools

Niveau 3 — plus sensible
- Stripe
- cloud provider
- déploiement staging
- outils internes
```

Règle : chaque serveur MCP doit avoir un périmètre clair et des permissions minimales.

---

## Phase 10 — Premier cycle de test

Créer 3 issues simples :

1. Ajouter une page ou route simple.
2. Ajouter un test sur une fonction existante.
3. Améliorer une documentation existante.

Pour chaque issue, utiliser ce prompt :

```txt
Prends l'issue #X.
Respecte `AGENTS.md`.
Utilise le skill pertinent dans `.codex/skills/`.
Travaille sur une branche dédiée.
Implémente la demande.
Ajoute ou mets à jour les tests.
Exécute lint, tests et build.
Prépare une PR.
Termine par : résumé, fichiers modifiés, tests exécutés, risques connus, points à valider.
```

Objectif : vérifier que Codex respecte bien le workflow avant de lui confier des tâches plus importantes.

---

## Phase 11 — Checklist de validation humaine

Créer `docs/validation-checklist.md` :

```md
# Checklist de validation humaine

## Produit

- [ ] Le comportement correspond au besoin.
- [ ] Les critères d'acceptation sont couverts.
- [ ] L'expérience utilisateur est acceptable.

## Technique

- [ ] La PR est compréhensible.
- [ ] Les changements sont limités au périmètre demandé.
- [ ] Les tests passent.
- [ ] La documentation est à jour.
- [ ] Aucun changement d'architecture non validé.

## Risques

- [ ] Pas de risque évident de sécurité.
- [ ] Pas de suppression de données non validée.
- [ ] Pas de dépendance majeure ajoutée sans validation.

## Décision finale

- [ ] Merge accepté
- [ ] Corrections demandées
- [ ] Rejeté / à reprendre
```

---

## Phase 12 — Prompts opérationnels

### Analyser sans coder

```txt
Analyse cette issue sans modifier le code.
Utilise les subagents architecte, backend, frontend et QA si pertinent.
Utilise les skills disponibles pour structurer ton analyse.
Retourne un plan d'implémentation, les risques et les points à valider.
```

### Implémenter après validation

```txt
Le plan est validé.
Implémente maintenant.
Respecte `AGENTS.md`.
Utilise les skills pertinents.
Ajoute les tests.
Lance lint, tests et build.
Prépare une PR.
```

### Corriger une PR après CI échouée

```txt
La CI échoue sur cette PR.
Analyse les logs.
Corrige uniquement ce qui est nécessaire.
Relance les validations disponibles.
Explique la cause racine et les corrections apportées.
```

### Revue avant validation humaine

```txt
Utilise le skill `pr-review` puis le skill `qa-review` sur cette PR.
Ne modifie rien dans un premier temps.
Retourne : verdict, points bloquants, tests manquants, risques et checklist de validation humaine.
```

---

## Phase 13 — Niveau d'automatisation cible

### Niveau 1 — Assisté

- Tu écris l'issue.
- Codex propose le plan.
- Tu valides.
- Codex implémente.
- Tu relis.

### Niveau 2 — Semi-autonome

- Tu écris l'issue.
- Codex analyse, implémente, teste et ouvre une PR.
- Tu valides uniquement la PR.

### Niveau 3 — Automatisation avancée

- Les issues validées déclenchent des tâches Codex.
- Codex travaille en parallèle.
- Codex review analyse les PR.
- La CI bloque les erreurs.
- Tu interviens seulement sur arbitrages et validation finale.

Recommandation : commencer au niveau 1 pendant quelques cycles, passer au niveau 2 une fois les règles stabilisées, puis envisager le niveau 3.

---

## Sources officielles à consulter

- Codex — https://developers.openai.com/codex
- Codex Cloud — https://developers.openai.com/codex/cloud
- Codex Skills — https://developers.openai.com/codex/skills
- AGENTS.md — https://developers.openai.com/codex/guides/agents-md
- MCP — https://developers.openai.com/codex/mcp
- Subagents — https://developers.openai.com/codex/subagents
- Customization — https://developers.openai.com/codex/concepts/customization
