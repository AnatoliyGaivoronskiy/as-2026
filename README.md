# Aplikační software — IT2, 2026/27

Repozitář pro předmět AS (databáze). Sem ukládám všechna cvičení
za celý školní rok. Odevzdává se commitem, ne mailem.

## Struktura

- `2026-09/` — září: Git, první data
- `2026-10/` — říjen: relační model
- (další měsíce přibudou)

## Kdo

Založeno 26. 9. 2026. 
Kód žáka: 5 · třída IT2

# Model e-shopu

```mermaid
erDiagram
    ZAKAZNIK ||--o{ OBJEDNAVKA : "zadává"
    OBJEDNAVKA ||--|{ POLOZKA : "obsahuje"
    PRODUKT ||--o{ POLOZKA : "je součástí"

    ZAKAZNIK {
        int id PK
        string jmeno
        string prijmeni
        string mesto
        string email
    }
    OBJEDNAVKA {
        int cislo PK
        date datum
        int id_zakaznika FK
    }
    PRODUKT {
        int id PK
        string nazev
        decimal cena
        string kategorie
        int sklad
    }
    POLOZKA {
        int id PK
        int id_objednavky FK
        int id_produktu FK
        int pocet
        decimal cena_za_ks
    }
```
