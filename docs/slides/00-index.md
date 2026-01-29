# Index des Slides - Méthodologie Claude Code

## Présentation complète (18 slides)

### Introduction
1. [01-titre.md](01-titre.md) - Titre et présentation
2. [02-principe-fondamental.md](02-principe-fondamental.md) - Principe fondamental

### Problématique
3. [03-pieges.md](03-pieges.md) - Les pièges à éviter

### Méthodologie
4. [04-preparation.md](04-preparation.md) - Préparation en amont
5. [05-workflow-feature.md](05-workflow-feature.md) - Workflow par feature
6. [06-processus-feature.md](06-processus-feature.md) - Processus détaillé
7. [07-surveillance.md](07-surveillance.md) - Surveillance en temps réel
8. [08a-controle-qualite.md](08a-controle-qualite.md) - Contrôle qualité (partie 1)
9. [08b-controle-qualite.md](08b-controle-qualite.md) - Contrôle qualité (partie 2)
10. [09-autonomie.md](09-autonomie.md) - Gestion de l'autonomie

### Résumé
11. [10-bonnes-pratiques.md](10-bonnes-pratiques.md) - Résumé des bonnes pratiques

### Outils : Définitions
12. [11-definition-skill.md](11-definition-skill.md) - Qu'est-ce qu'une skill ?
13. [12-definition-agent.md](12-definition-agent.md) - Qu'est-ce qu'un agent ?
14. [13-difference-skill-agent.md](13-difference-skill-agent.md) - Différence skill vs agent

### Outils : Implémentation
15. [11a-perspective-skill.md](11a-perspective-skill.md) - Skill proposée (partie 1)
16. [11b-perspective-skill.md](11b-perspective-skill.md) - Skill proposée (partie 2)
17. [12a-perspective-agent.md](12a-perspective-agent.md) - Agent proposé (partie 1)
18. [12b-perspective-agent.md](12b-perspective-agent.md) - Agent proposé (partie 2)
19. [13a-agent-workflow.md](13a-agent-workflow.md) - Workflow agent (partie 1)
20. [13b-agent-workflow.md](13b-agent-workflow.md) - Workflow agent (partie 2)
21. [14-agent-commandes.md](14-agent-commandes.md) - Commandes de l'agent

### Conclusion
22. [15-conclusion.md](15-conclusion.md) - Conclusion

## Ordre de Présentation Recommandé

### Version Courte (10 min)
- 01, 02, 03, 05, 10, 11, 12, 13, 15

### Version Standard (20 min)
- 01, 02, 03, 04, 05, 06, 07, 09, 10, 11, 12, 13, 11a, 12a, 15

### Version Complète (30-40 min)
- Toutes les slides dans l'ordre

## Visualisation

### Avec Marp CLI

```bash
# Générer un PDF de toutes les slides
marp docs/slides/*.md --pdf --allow-local-files -o presentation.pdf

# Générer un HTML
marp docs/slides/*.md --html --allow-local-files -o presentation.html

# Mode présentation (serveur local)
marp -s docs/slides/
```

### Avec VS Code

1. Installer l'extension "Marp for VS Code"
2. Ouvrir une slide .md
3. Cliquer sur l'icône Marp dans la barre d'outils
4. Utiliser les flèches pour naviguer

### Combiner toutes les slides

```bash
# Créer une présentation unique
cat docs/slides/01-titre.md \
    docs/slides/02-principe-fondamental.md \
    docs/slides/03-pieges.md \
    [...] \
    > presentation-complete.md
```

## Personnalisation

### Thème

Pour changer le thème, modifier l'entête de chaque slide :

```markdown
---
marp: true
theme: gaia      # ou uncover, default
paginate: true
---
```

### Style Personnalisé

Créer un fichier `custom-theme.css` :

```css
/* custom-theme.css */
section {
  background: #1e1e1e;
  color: #ffffff;
}

h1 {
  color: #4fc3f7;
}
```

Puis dans les slides :

```markdown
---
marp: true
theme: custom-theme
paginate: true
style: |
  @import 'custom-theme.css';
---
```

## Export

### PDF
```bash
marp presentation.md --pdf -o output.pdf
```

### PowerPoint
```bash
marp presentation.md --pptx -o output.pptx
```

### Images
```bash
marp presentation.md --images png -o slides/
```

## Ressources

- [Marp Documentation](https://marpit.marp.app/)
- [Marp CLI](https://github.com/marp-team/marp-cli)
- [VS Code Extension](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)

## Notes pour le Présentateur

### Points clés à insister

1. **Ne jamais laisser l'IA travailler sans surveillance**
2. **Validation à chaque étape**
3. **Raisonnez en petites features**
4. **Toujours utiliser Git**

### Questions fréquentes anticipées

Q: "Mais ça va prendre plus de temps ?"
R: Oui, mais vous économisez le temps de debugging et de refactoring

Q: "On ne peut pas faire confiance à l'IA ?"
R: Si, mais comme à un développeur junior : avec supervision

Q: "C'est pas contradictoire avec l'objectif d'automatisation ?"
R: Non, c'est de l'automatisation supervisée, le meilleur des deux mondes

### Démonstration Live (optionnel)

Préparer un exemple simple :
1. Lancer `/methodical-dev`
2. Créer une feature simple (ex: endpoint API)
3. Montrer les validations à chaque étape
4. Montrer le résultat final

---

**Document de référence** : [docs/methodologie-claude-code.md](../methodologie-claude-code.md)
