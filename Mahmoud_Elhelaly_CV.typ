// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.2.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mahmoud Elhelaly",
  title: "Mahmoud Elhelaly - CV",
  footer: context { [#emph[Mahmoud Elhelaly -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Mar 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.5cm,
  page-bottom-margin: 0.5cm,
  page-left-margin: 0.5cm,
  page-right-margin: 0.5cm,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.5em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 20pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.3cm,
  header-space-below-headline: 0.3cm,
  header-space-below-connections: 0.3cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.3cm,
  section-titles-space-below: 0.2cm,
  sections-allow-page-break: false,
  sections-space-between-text-based-entries: 0.2em,
  sections-space-between-regular-entries: 0.8em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 3,
    day: 15,
  ),
)


= Mahmoud Elhelaly

  #headline([Data Analyst])

#connections(
  [#connection-with-icon("location-dot")[Cairo, Egypt]],
  [#link("mailto:mahmoudwork2040@gmail.com", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[mahmoudwork2040\@gmail.com]]],
  [#link("tel:+20-10-00767912", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[010 00767912]]],
  [#link("https://linkedin.com/in/mahmoud--elhelaly", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[mahmoud--elhelaly]]],
  [#link("https://github.com/MGmahmoud", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[MGmahmoud]]],
)


== Summary

Data tells stories... I remove the noise to ensure you can hear them clearly.

== Experience

#regular-entry(
  [
    #strong[High Solve Company], Data Analyst

    - Built Power BI dashboards for cars retail to track multi-branch KPIs.

    - Created data quality frameworks to audit ERP entries, resolving 5\% of data entery errors.

    - Analyzed sales reps performance to provide accurate reports.

  ],
  [
    Hybrid

    June 2025 – Mar 2026

    10 months

  ],
)

#regular-entry(
  [
    #strong[NTI Summer Training Program], Instructor - Data Analytics

    - Trained 90+ students in full-cycle data analytics, ETL, and database design.

    - Led technical sessions in SQL, Python, and Power BI to build production-ready solutions.

  ],
  [
    Hybrid

    July 2025 – Jan 2026

    7 months

  ],
)

#regular-entry(
  [
    #strong[Freelance], Data Analyst & BI Consultant

    - Translated client requirements into scalable data models and Power BI reports.

    - Streamlined reporting by integrating disparate data sources, reducing manual work by 30\%.

  ],
  [
    Online

    Feb 2025 – present

    1 year 2 months

  ],
)

== Projects

#regular-entry(
  [
    #strong[Electronics Retail Performance & Forecast]

    - #strong[Tech Stack:] SQL Server, Power BI, DAX, Excel, Power Query

    - #strong[Problem:] Management lacked visibility into brand-level profitability and forecast variance.

    - #strong[Solution:] Built a drill-down dashboard comparing YoY historical data to real-time KPIs.

    - #strong[Impact:] Enabled data-driven procurement, optimizing stock and negotiating volume discounts.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Retail Data Warehouse & Strategic Analytics]

    - #strong[Tech Stack:] SQL Server, Star Schema, Advanced T-SQL, Medallion Arch

    - #strong[Problem:] Siloed CSVs from ERP\/CRM caused data duplication and unreliable reporting.

    - #strong[Solution:] Built an ETL pipeline to transform raw files into a Gold-layer SSOT.

    - #strong[Impact:] Delivered RFM Segmentation and Pareto Analysis to optimize marketing spend.

    - Architected a Medallion DWH (Bronze\/Silver\/Gold) to centralize disparate retail sources.

    - Implemented a Star Schema model, reducing report generation latency by 70\%.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[HR Early Warning System (Employee Attrition)]

    - #strong[Tech Stack:] Python (Scikit-Learn), XGBoost, Random Forest, Seaborn

    - #strong[Problem:] Lack of quantitative tools to identify attrition root causes or predict churn risk.

    - #strong[Solution:] Performed EDA and built an XGBoost pipeline to identify high-risk employee segments.

    - #strong[Impact:] Created an early warning system for HR to apply proactive retention strategies.

    - Developed a predictive model for employee turnover using a 1,400+ record dataset.

    - Achieved 87\% accuracy in identifying key churn drivers like salary and travel frequency.

  ],
  [
  ],
)

#regular-entry(
  [
    #strong[Enterprise Banking ETL & Dimensional Modeling]

    - #strong[Tech Stack:] Informatica PowerCenter, Oracle SQL, PL\/SQL, Star Schema

    - #strong[Problem:] Core banking system degradation during month-end due to heavy reporting loads.

    - #strong[Solution:] Built an offloaded ETL pipeline and Oracle reporting layer with data validation.

    - #strong[Impact:] Improved reporting efficiency by 10X and ensured 100\% audit-ready data accuracy.

    - Architected a high-availability Informatica framework to offload production workloads.

    - Engineered an Oracle Star Schema to optimize transactional data for regulatory reporting.

  ],
  [
  ],
)

== Tech Stack

#strong[Business Intelligence & Tools:] Power BI, DAX, Tableau, Excel, SSIS, SSRS, SSAS, Data Warehousing, ETL\/ELT, Data Modeling, Informatica Power Center

#strong[Data Engineering:] Python, SQL, PostgreSQL, SQL Server, ETL, Data Modeling, Linux(Bash)

#strong[Programming:] Python (Pandas, Scikit-Learn), SQL (T-SQL, PostgreSQL)

== Education

#education-entry(
  [
    #strong[Al-Azhar University], B.Sc. in Engineering

  ],
  [
    Cairo, Egypt

    2019 – 2024

  ],
)

#education-entry(
  [
    #strong[Information Technology Institute (ITI)], Power BI Track Trainee

  ],
  [
    Hybrid

    Dec 2024 – Mar 2025

  ],
)

== Certifications

#strong[Power BI Data Analyst Associate | Microsoft]

#strong[Data Analyst Associate | DataCamp]

== Languages

#strong[Languages:] #strong[Arabic:] Native \\hspace{1cm} #strong[English:] Professional
