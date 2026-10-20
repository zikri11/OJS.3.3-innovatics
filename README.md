# OJS 3.3 Custom Theme: INNOVATICS (LEXA Style Adaptation)

Kustomisasi tema frontend untuk Jurnal **INNOVATICS** (*Innovation In Research of Informatics*), Jurusan Informatika, Fakultas Teknik, Universitas Siliwangi pada platform **Open Journal Systems (OJS) 3.3.0-21**.

## Komponen Tema
- **Header Suite:** Top Utility Bar (Navy #0A2540), Logo vektor resmi SVG, Integrated Search Box, dan Primary Navbar.
- **Hero Section:** Banner pembuka bergaya LEXA lengkap dengan visual jaringan 3D dan ribbon 4 metrik capaian jurnal.
- **Sidebar Suite:** Card Quick Menu dengan tombol Call-to-Action download template naskah, Card Supported (Grid 2x2), Card Indexed By (SINTA, DOAJ, Scholar, ICI), dan Card Articles.
- **Isolasi Multi-Journal:** Seluruh modifikasi template Smarty dilindungi selektor kondisional path `innovatics` agar tidak mempengaruhi jurnal lain pada server portal kampus. Seluruh rule CSS di-scope pada `body.pkp_page_index` agar halaman artikel tetap orisinal bawaan OJS.

## Struktur Direktori
```text
.
├── public/
│   └── journals/
│       └── 29/
│           ├── styleSheet.css
│           ├── logo-innovatics.svg
│           ├── logo-innovatics-white.svg
│           └── hero-network.png
└── templates/
    └── frontend/
        ├── components/
        │   ├── header.tpl
        │   └── footer.tpl
        └── pages/
            └── indexJournal.tpl
```
