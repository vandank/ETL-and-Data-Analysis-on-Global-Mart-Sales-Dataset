# ETL-and-Data-Analysis-on-Global-Mart-Sales-Dataset

Project: ETL and Data Analysis on Global Mart Sales Dataset
This project focused on designing and implementing an end-to-end ETL pipeline and performing advanced data analysis on a retail orders dataset comprising 10,000 records from the Global Mart Sales Dataset (2022–2023). The primary goal was to extract actionable insights into sales, revenue, and profit trends across regions, categories, and time periods to simulate real-world business intelligence reporting.

# Phase 1: Data Extraction and ETL Process
- Leveraged the Kaggle API to extract the dataset, automating the data acquisition process and ensuring a scalable and repeatable workflow.
Conducted data cleaning and transformation using Python libraries such as pandas and numpy, addressing inconsistencies, missing values, and formatting issues to prepare the data for analysis.
- Designed and implemented a robust ETL pipeline to load the cleaned and transformed data into a MySQL Workbench database, creating a structured schema optimized for efficient querying.
- Utilized SQLAlchemy to connect Python to MySQL, automating database interactions and enabling seamless data integration between the ETL pipeline and the database.
# Phase 2: Data Analysis Using SQL
- Conducted in-depth data analysis using SQL queries to derive valuable business insights:
- Identified the Top 10 highest revenue-generating products, driving insights into product-level performance.
- Determined the Top 5 highest-selling products for each region, enabling region-specific sales strategies.
- Performed a month-over-month sales growth comparison for 2022 and 2023, revealing temporal sales patterns and year-over-year trends (e.g., January 2022 vs. January 2023).
- Highlighted the best-performing months for each category based on sales, identifying peak demand periods for targeted planning.
- Analyzed profit growth by subcategory, pinpointing the subcategories with the highest year-over-year growth in profitability for 2023 compared to 2022.
# Phase 3: Query Optimization and Insights
- Extensively leveraged Common Table Expressions (CTEs) for enhanced query readability, modularity, and performance. This simplified the creation of complex queries, such as sales growth comparisons and profit analyses, making them easier to debug and extend.
- Delivered insights on peak sales periods, high-performing products, and profit-driving subcategories, enabling data-driven decision-making and strategic planning.
# Technologies and Tools Used
- Python: pandas, numpy, SQLAlchemy
- Database Management: MySQL Workbench
- Data Source: Kaggle API
- Analysis Techniques: Advanced SQL queries with Common Table Expressions (CTEs), window functions, and aggregate functions.
# Impact
This project demonstrated proficiency in designing scalable ETL pipelines, integrating Python and SQL for data transformation and storage, and leveraging SQL for data analytics. The insights generated—such as product-level performance, regional trends, and profitability growth—simulate the kind of actionable reporting used in real-world retail operations, showcasing a strong understanding of data engineering and analysis.
