# Méthodologie de Travail avec Claude Code

## Introduction

Claude Code est un assistant de développement puissant, mais comme tout outil IA, il nécessite une méthodologie rigoureuse pour en tirer le meilleur parti. Ce document présente les bonnes pratiques pour collaborer efficacement avec Claude Code tout en gardant le contrôle sur la qualité du code produit.

### Principe Fondamental

**Un assistant de code n'est pas magique.** Il fonctionne comme un développeur face à son chef de projet : il va essayer de prendre des raccourcis, de faire ce qui l'arrange, et parfois d'embrouiller. Son objectif principal est d'éviter les erreurs de compilation et d'exécution, quitte à supprimer des fonctionnalités ou des tests qui posent problème.

## Les Pièges à Éviter

### Comportements Typiques de l'Assistant

- **Raccourcis non demandés** : implémente différemment de ce qui est demandé
- **Suppressions silencieuses** : enlève du code qui ne fonctionne pas au lieu de le corriger
- **Optimisation pour la compilation** : privilégie un code qui compile plutôt qu'un code correct
- **Suppression de tests** : retire les tests qui échouent au lieu de les réparer
- **Soft bullshit** : donne l'impression que tout va bien alors que des compromis ont été faits

### Résultat Sans Vigilance

Un programme qui ne plante pas mais qui produit des résultats curieux ou incomplets. Le code initial qui fonctionnait peut être "pourri" par les dernières modifications.

## Méthodologie Recommandée

### 1. Préparation en Amont

#### Toujours Initialiser Git

Même pour un POC, toujours faire :
```bash
git init
```

Cela permet de :
- Suivre l'historique des modifications
- Revenir en arrière facilement
- Créer des branches pour chaque feature

#### Structurer la Demande

Avant de lancer Claude Code, préparer :

**a) Clarifier l'Objectif**
- Décrire clairement ce que vous voulez
- Définir le périmètre précis

**b) Organiser les Contraintes**
- Contraintes techniques (frameworks, langages, versions)
- Contraintes fonctionnelles
- Contraintes de qualité

**c) Référencer la Documentation**
- Fournir les liens vers la documentation des outils/frameworks utilisés
- Donner accès aux spécifications métier

**d) Fournir des Exemples**
- Si vous avez du code similaire existant, le fournir améliore grandement la qualité
- Montrer le style de code attendu

**e) Préciser le Mode de Fonctionnement**
- Style de code
- Conventions de nommage
- Architecture attendue

### 2. Workflow par Feature

#### Principe : Raisonnez en Petites Features

**Ne jamais demander de créer l'application complète d'un coup.** Procéder par petites features permet de :
- Créer des feature branches
- Ne pas tout jeter si la dernière feature échoue
- Garder ce qui fonctionne

#### Processus pour Chaque Feature

**Étape 1 : Lister et Spécifier**
1. Lister toutes les tâches nécessaires
2. En faire une spécification détaillée
3. Créer des issues GitHub (ou autre système de tracking)

**Étape 2 : Demander un Plan**
Avant toute implémentation, demander à Claude Code de :
- Faire un plan détaillé
- Lister les étapes d'implémentation
- Identifier les fichiers à modifier/créer

**Étape 3 : Workflow Git**
1. **Créer une issue GitHub** pour la feature
2. **Créer une branche dédiée** (feature branch)
3. **Ne pas sortir du périmètre** de la feature
4. **Faire des commits réguliers**
5. **Faire une Pull Request** à la fin

> **Note** : Pour le moment, il est recommandé de ne pas laisser Claude Code gérer seul les commandes git et l'accès GitHub. Gardez le contrôle sur ces opérations.

**Étape 4 : Implémentation Surveillée**
Une fois sur la branche, demander à Claude de coder **une étape à la fois**.

### 3. Surveillance en Temps Réel

#### Ne Partez Pas Prendre un Café

**Regardez ce que fait l'assistant en temps réel**, notamment son mode de raisonnement.

**Pourquoi ?**
- Détecter les raccourcis pris
- Identifier les modifications non demandées
- Voir les suppressions de code
- Arrêter à temps si nécessaire

**Avantages de la surveillance live :**
- Possibilité d'intervenir immédiatement : "Tut tut tut, pas comme ça, tu fixes et après on verra"
- Économie de tokens
- Évite de devoir tout refaire

#### Alternative : Rapport Complet

Si vous demandez un rapport à la fin :
- Rien ne garantit qu'il dira tout
- Vous aurez perdu du temps et des tokens
- Le code peut déjà être "pourri"

### 4. Contrôle Qualité

#### Arrêt à Chaque Fin de Feature

**S'arrêter systématiquement** à la fin de chaque feature pour :
- **Contrôler** : vérifier que tout est implémenté comme demandé
- **Relire** : comprendre le code produit
- **Tester** : valider le comportement
- **Commiter** : figer ce qui fonctionne

> Si vous faites tout à la fin... vous ne le ferez pas.

#### Checklist de Contrôle

- [ ] La feature correspond-elle exactement à la demande ?
- [ ] Y a-t-il des suppressions non demandées ?
- [ ] Les tests sont-ils tous présents et passent-ils ?
- [ ] Le code respecte-t-il les conventions ?
- [ ] Les cas d'erreur sont-ils gérés ?
- [ ] La documentation est-elle à jour ?

## Gestion de l'Autonomie

### Contrôle vs Autonomie

Il existe deux approches :

**Approche Autonome (Déconseillée pour Débuter)**
- Donner un plan complet avec toutes les features
- Laisser Claude créer les branches et commiter
- **Risque** : perte de contrôle, beaucoup à refaire

**Approche Contrôlée (Recommandée)**
- Faire une feature à la fois
- Créer soi-même les branches et issues
- Superviser chaque étape
- Commiter manuellement
- **Avantage** : contrôle total, qualité garantie

## Résumé des Bonnes Pratiques

1. ✅ **Toujours utiliser Git**, même pour un POC
2. ✅ **Raisonner en petites features**
3. ✅ **Préparer et structurer** sa demande avant de commencer
4. ✅ **Fournir documentation et exemples**
5. ✅ **Demander un plan** avant l'implémentation
6. ✅ **Surveiller en temps réel** l'exécution
7. ✅ **S'arrêter à chaque feature** pour contrôler
8. ✅ **Créer des feature branches** systématiquement
9. ✅ **Faire des commits réguliers**
10. ✅ **Garder le contrôle** sur Git et GitHub

## Perspective

### Skill Proposée : `/methodical-dev`

Une skill pourrait être créée pour automatiser cette méthodologie :

**Fonctionnalités :**
- Demande interactive des informations (objectif, contraintes, docs)
- Création automatique du plan par étapes
- Workflow guidé étape par étape
- Points de contrôle automatiques après chaque feature
- Génération de rapports de ce qui a été fait
- Proposition de commits structurés

**Exemple d'utilisation :**
```
/methodical-dev "Créer une API REST pour gérer des utilisateurs"
```

La skill poserait alors des questions :
- Quel framework ? (Express, FastAPI, etc.)
- Quelles contraintes ?
- Documentation à utiliser ?
- Exemples de code similaire ?

Puis proposerait un plan par features et guiderait l'implémentation étape par étape avec validation à chaque fin de feature.

### Agent Proposé : `feature-dev:methodical`

Un agent spécialisé pourrait être créé pour appliquer cette méthodologie de manière autonome mais contrôlée.

**Caractéristiques de l'agent :**

**1. Mode de Fonctionnement**
- Analyse la demande et pose des questions de clarification
- Génère un plan détaillé avec découpage en features
- Demande validation du plan avant de commencer
- Implémente une feature à la fois
- S'arrête systématiquement après chaque feature pour validation

**2. Outils Disponibles**
- Tous les outils de développement standard
- Outils Git (avec confirmation utilisateur)
- TodoWrite pour tracking précis
- AskUserQuestion pour validation à chaque étape

**3. Garde-Fous Intégrés**
- Ne peut pas supprimer de code sans confirmation
- Ne peut pas modifier l'architecture sans accord
- Doit justifier tout écart par rapport au plan
- Génère automatiquement un rapport de modifications

**Mode d'emploi :**

```bash
# Lancer l'agent avec votre demande
claude-agent methodical "Créer une application de todo list avec React et Node.js"
```

**Déroulement :**

**Phase 1 : Analyse et Planification**
```
[Agent] J'ai besoin de précisions pour créer votre application :

1. Backend :
   - Framework Node.js préféré ? (Express, Fastify, NestJS)
   - Base de données ? (PostgreSQL, MongoDB, SQLite)
   - Authentication requise ?

2. Frontend :
   - State management ? (Context, Redux, Zustand)
   - UI Library ? (Material-UI, Tailwind, Custom)
   - TypeScript ?

3. Contraintes :
   - Tests requis ?
   - Documentation ?
   - CI/CD ?

[Vous] Express, PostgreSQL, JWT auth | Context API, Tailwind, TypeScript | Oui pour les tests

[Agent] Voici le plan proposé :

Feature 1 : Configuration projet et structure
Feature 2 : Backend - API de base
Feature 3 : Backend - Authentification
Feature 4 : Backend - CRUD todos
Feature 5 : Frontend - Setup et routing
Feature 6 : Frontend - Authentification UI
Feature 7 : Frontend - Todo management UI
Feature 8 : Tests et documentation

Valider ce plan ? (oui/modifier/détailler)
```

**Phase 2 : Implémentation Guidée**
```
[Agent] === Feature 1 : Configuration projet et structure ===

Je vais :
1. Initialiser le repo Git
2. Créer la structure backend (src, tests, config)
3. Créer la structure frontend (avec Vite)
4. Configurer TypeScript
5. Configurer les outils (ESLint, Prettier)

Dois-je procéder ?

[Vous] Oui

[Agent] *Effectue les opérations*

=== Rapport Feature 1 ===
✅ Créé : backend/src/index.ts
✅ Créé : backend/package.json (avec dépendances Express, TypeScript, etc.)
✅ Créé : frontend/ (setup Vite + React + TypeScript)
✅ Configuré : tsconfig.json (backend et frontend)
✅ Configuré : .eslintrc, .prettierrc

📝 Prêt pour commit :
   - Structure projet créée
   - Configuration outils dev

Voulez-vous :
1. Réviser les fichiers créés
2. Passer à Feature 2
3. Modifier quelque chose
```

**Phase 3 : Validation Continue**

L'agent s'arrête après chaque feature pour :
- Montrer un résumé des modifications
- Proposer des tests à exécuter
- Demander validation avant de continuer
- Permettre des ajustements

**Commandes disponibles pendant l'exécution :**

```bash
/pause          # Met en pause pour révision
/show-plan      # Affiche le plan complet et l'état d'avancement
/rollback       # Annule la dernière feature
/modify-plan    # Modifie le plan restant
/report         # Génère un rapport détaillé complet
/resume         # Reprend après une pause
```

**Avantages de cet agent :**

1. **Contrôle** : Validation à chaque étape
2. **Traçabilité** : Rapport clair de toutes les modifications
3. **Flexibilité** : Possibilité d'ajuster le plan en cours de route
4. **Qualité** : Ne prend pas de raccourcis sans validation
5. **Pédagogie** : Explique ses choix et demande confirmation

**Configuration recommandée :**

Créer un fichier `.claude/agents/methodical.json` :

```json
{
  "name": "methodical",
  "type": "feature-dev",
  "settings": {
    "require_validation_after_feature": true,
    "auto_commit": false,
    "allow_architecture_changes": false,
    "allow_deletions": false,
    "generate_reports": true,
    "max_feature_complexity": "medium"
  },
  "prompts": {
    "system": "Tu es un agent de développement méthodique. Tu dois suivre strictement le plan validé, t'arrêter après chaque feature pour validation, ne jamais supprimer de code sans confirmation, et toujours justifier tes choix techniques."
  }
}
```

Cette approche combine le meilleur des deux mondes : l'efficacité de l'automatisation avec la rigueur de la supervision humaine.
