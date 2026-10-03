/* ============================================================
   BLINKIT GROCERY STORE ANALYSIS
   Database: blinkit
   Table: grocery_store
   ============================================================ */

USE blinkit;


-- Check total number of rows

SELECT COUNT(*) AS total_rows
FROM grocery_store;


-- Check unique Fat Content values

SELECT distinct
    item_fat_content
FROM grocery_store
ORDER BY item_fat_content;


-- Check unique Outlet Size values

SELECT DISTINCT
    outlet_size
FROM grocery_store
ORDER BY outlet_size;


-- Check unique Outlet Type values

SELECT DISTINCT
    outlet_type
FROM grocery_store
ORDER BY outlet_type;




/* ============================================================
   BASIC QUERIES
   ============================================================ */

-- 01. Show all Item Identifiers

SELECT item_identifier
FROM grocery_store;


-- 02. Count total Item Identifiers

SELECT COUNT(item_identifier) AS total_item_identifiers
FROM grocery_store;


-- 03. Show maximum Item Weight

SELECT ROUND(MAX(item_weight), 2) AS max_item_weight
FROM grocery_store;


-- 04. Show minimum Item Weight

SELECT ROUND(MIN(item_weight), 2) AS min_item_weight
FROM grocery_store;


-- 05. Show average Item Weight

SELECT ROUND(AVG(item_weight), 2) AS avg_item_weight
FROM grocery_store;


/* ============================================================
   FAT CONTENT
   ============================================================ */

-- 06. Count Low Fat items

SELECT COUNT(*) AS low_fat_items
FROM grocery_store
WHERE item_fat_content = 'Low Fat';


-- 07. Count Regular Fat items
SELECT COUNT(*) AS regular_fat_items
FROM grocery_store
WHERE item_fat_content = 'Regular';


/* ============================================================
   ITEM MRP
   ============================================================ */

-- 08. Show maximum Item MRP

SELECT ROUND(MAX(item_mrp), 2) AS max_item_mrp
FROM grocery_store;


-- 09. Show minimum Item MRP

SELECT ROUND(MIN(item_mrp), 2) AS min_item_mrp
FROM grocery_store;


-- 10. Show items with MRP greater than 200

SELECT
    item_identifier,
    item_fat_content,
    item_type,
    item_mrp
FROM grocery_store
WHERE item_mrp > 200;


-- 11. Show maximum MRP for Low Fat items

SELECT ROUND(MAX(item_mrp), 2) AS max_mrp
FROM grocery_store
WHERE item_fat_content = 'Low Fat';


-- 12. Show minimum MRP for Low Fat items

SELECT ROUND(MIN(item_mrp), 2) AS min_mrp
FROM grocery_store
WHERE item_fat_content = 'Low Fat';


-- 13. Show items with MRP between 50 and 100

SELECT *
FROM grocery_store
WHERE item_mrp BETWEEN 50 AND 100;


/* ============================================================
   DISTINCT VALUES
   ============================================================ */

-- 14. Show unique Item Fat Content values

SELECT DISTINCT item_fat_content
FROM grocery_store
ORDER BY item_fat_content;


-- 15. Show unique Item Type values

SELECT DISTINCT item_type
FROM grocery_store
ORDER BY item_type;


/* ============================================================
   SORTING & FILTERING
   ============================================================ */

-- 16. Show all data ordered by Item MRP descending

SELECT *
FROM grocery_store
ORDER BY item_mrp DESC;


-- 17. Show all data ordered by Item Outlet Sales ascending

SELECT *
FROM grocery_store
ORDER BY item_outlet_sales ASC;


-- 18. Show all data ordered by Item Type ascending

SELECT *
FROM grocery_store
ORDER BY item_type ASC;


-- 19. Show Dairy and Meat items

SELECT *
FROM grocery_store
WHERE item_type IN ('Dairy', 'Meat');


/* ============================================================
   OUTLET INFORMATION
   ============================================================ */

-- 20. Show unique Outlet Size values

SELECT DISTINCT outlet_size
FROM grocery_store
ORDER BY outlet_size;


-- 21. Show unique Outlet Location Type values

SELECT DISTINCT outlet_location_type
FROM grocery_store
ORDER BY outlet_location_type;


-- 22. Show unique Outlet Type values

SELECT DISTINCT outlet_type
FROM grocery_store
ORDER BY outlet_type;


/* ============================================================
   COUNT ANALYSIS
   ============================================================ */

-- 23. Count items by Item Type

SELECT
    item_type,
    COUNT(*) AS total_items
FROM grocery_store
GROUP BY item_type
ORDER BY total_items DESC;


-- 24. Count items by Outlet Size

SELECT
    outlet_size,
    COUNT(*) AS total_items
FROM grocery_store
GROUP BY outlet_size
ORDER BY total_items ASC;


-- 25. Count items by Outlet Type

SELECT
    outlet_type,
    COUNT(*) AS total_items
FROM grocery_store
GROUP BY outlet_type
ORDER BY total_items DESC;


-- 26. Count items by Outlet Location Type

SELECT
    outlet_location_type,
    COUNT(*) AS total_items
FROM grocery_store
GROUP BY outlet_location_type
ORDER BY total_items DESC;


/* ============================================================
   MRP ANALYSIS
   ============================================================ */

-- 27. Maximum MRP by Item Type

SELECT
    item_type,
    ROUND(MAX(item_mrp), 2) AS max_mrp
FROM grocery_store
GROUP BY item_type
ORDER BY max_mrp DESC;


-- 28. Minimum MRP by Item Type

SELECT
    item_type,
    ROUND(MIN(item_mrp), 2) AS min_mrp
FROM grocery_store
GROUP BY item_type
ORDER BY min_mrp ASC;


-- 29. Minimum MRP by Outlet Establishment Year

SELECT
    outlet_establishment_year,
    ROUND(MIN(item_mrp), 2) AS min_mrp
FROM grocery_store
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year DESC;


-- 30. Maximum MRP by Outlet Establishment Year

SELECT
    outlet_establishment_year,
    ROUND(MAX(item_mrp), 2) AS max_mrp
FROM grocery_store
GROUP BY outlet_establishment_year
ORDER BY outlet_establishment_year DESC;


-- 31. Average MRP by Outlet Size

SELECT
    outlet_size,
    ROUND(AVG(item_mrp), 2) AS avg_mrp
FROM grocery_store
GROUP BY outlet_size
ORDER BY avg_mrp DESC;


-- 32. Average MRP by Outlet Type

SELECT
    outlet_type,
    ROUND(AVG(item_mrp), 2) AS avg_mrp
FROM grocery_store
GROUP BY outlet_type
ORDER BY avg_mrp ASC;


-- 33. Maximum MRP by Outlet Type

SELECT
    outlet_type,
    ROUND(MAX(item_mrp), 2) AS max_mrp
FROM grocery_store
GROUP BY outlet_type
ORDER BY max_mrp DESC;


/* ============================================================
   ITEM WEIGHT ANALYSIS
   ============================================================ */

-- 34. Maximum Item Weight by Item Type

SELECT
    item_type,
    ROUND(MAX(item_weight), 2) AS max_weight
FROM grocery_store
GROUP BY item_type
ORDER BY max_weight DESC;


-- 35. Maximum Item Weight by Outlet Establishment Year

SELECT
    outlet_establishment_year,
    ROUND(MAX(item_weight), 2) AS max_weight
FROM grocery_store
GROUP BY outlet_establishment_year
ORDER BY max_weight DESC;


-- 36. Minimum Item Weight by Outlet Type

SELECT
    outlet_type,
    ROUND(MIN(item_weight), 2) AS min_weight
FROM grocery_store
GROUP BY outlet_type
ORDER BY min_weight ASC;


-- 37. Average Item Weight by Outlet Location Type

SELECT
    outlet_location_type,
    ROUND(AVG(item_weight), 2) AS avg_item_weight
FROM grocery_store
GROUP BY outlet_location_type
ORDER BY avg_item_weight DESC;


/* ============================================================
   SALES ANALYSIS
   ============================================================ */

-- 38. Maximum Sales by Item Type

SELECT
    item_type,
    ROUND(MAX(item_outlet_sales), 2) AS max_sales
FROM grocery_store
GROUP BY item_type
ORDER BY max_sales DESC;


-- 39. Minimum Sales by Item Type

SELECT
    item_type,
    ROUND(MIN(item_outlet_sales), 2) AS min_sales
FROM grocery_store
GROUP BY item_type
ORDER BY min_sales ASC;


-- 40. Minimum Sales by Outlet Establishment Year

SELECT
    outlet_establishment_year,
    ROUND(MIN(item_outlet_sales), 2) AS min_sales
FROM grocery_store
GROUP BY outlet_establishment_year
ORDER BY min_sales ASC;


-- 41. Maximum Sales by Outlet Establishment Year

SELECT
    outlet_establishment_year,
    ROUND(MAX(item_outlet_sales), 2) AS max_sales
FROM grocery_store
GROUP BY outlet_establishment_year
ORDER BY max_sales DESC;


-- 42. Average Sales by Outlet Size

SELECT
    outlet_size,
    ROUND(AVG(item_outlet_sales), 2) AS avg_sales
FROM grocery_store
GROUP BY outlet_size
ORDER BY avg_sales DESC;


-- 43. Average Sales by Outlet Type

SELECT
    outlet_type,
    ROUND(AVG(item_outlet_sales), 2) AS avg_sales
FROM grocery_store
GROUP BY outlet_type
ORDER BY avg_sales ASC;


-- 44. Maximum Sales by Outlet Type

SELECT
    outlet_type,
    ROUND(MAX(item_outlet_sales), 2) AS max_sales
FROM grocery_store
GROUP BY outlet_type
ORDER BY max_sales DESC;


-- 45. Total Sales by Item Type

SELECT
    item_type,
    ROUND(SUM(item_outlet_sales), 2) AS total_sales
FROM grocery_store
GROUP BY item_type
ORDER BY total_sales DESC;


-- 46. Total Sales by Item Fat Content

SELECT
    item_fat_content,
    ROUND(SUM(item_outlet_sales), 2) AS total_sales
FROM grocery_store
GROUP BY item_fat_content
ORDER BY total_sales DESC;


/* ============================================================
   ITEM VISIBILITY
   ============================================================ */

-- 47. Maximum Item Visibility by Item Type

SELECT
    item_type,
    ROUND(MAX(item_visibility), 4) AS max_item_visibility
FROM grocery_store
GROUP BY item_type
ORDER BY max_item_visibility DESC;


-- 48. Minimum Item Visibility by Item Type

SELECT
    item_type,
    ROUND(MIN(item_visibility), 4) AS min_item_visibility
FROM grocery_store
GROUP BY item_type
ORDER BY min_item_visibility ASC;


/* ============================================================
   FILTERED SALES ANALYSIS
   ============================================================ */

-- 49. Total Sales by Item Type for Tier 1 Locations

SELECT
    item_type,
    ROUND(SUM(item_outlet_sales), 2) AS total_sales
FROM grocery_store
WHERE outlet_location_type = 'Tier 1'
GROUP BY item_type
ORDER BY total_sales DESC;


-- 50. Total Sales by Item Type for Low Fat and LF Items

SELECT
    item_type,
    ROUND(SUM(item_outlet_sales), 2) AS total_sales
FROM grocery_store
WHERE item_fat_content IN ('Low Fat', 'LF')
GROUP BY item_type
ORDER BY total_sales DESC;
