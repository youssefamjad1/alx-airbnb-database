# Database Normalization Report

## Objective
To ensure that the Airbnb database schema is normalized to **Third Normal Form (3NF)** for data integrity, scalability, and reduction of redundancy.

---

## 1. First Normal Form (1NF)

- All tables have a defined **primary key**.
- All fields contain **atomic values**.
- No repeating groups or arrays are present.

✅ The database satisfies 1NF.

---

## 2. Second Normal Form (2NF)

- The schema is in 1NF.
- No table uses **composite primary keys**.
- All non-key attributes are **fully functionally dependent** on the entire primary key.

✅ The database satisfies 2NF.

---

## 3. Third Normal Form (3NF)

- The schema is in 2NF.
- All attributes are **non-transitively dependent** on the primary key.
- There are no derived or redundant attributes in any table.

✅ The database satisfies 3NF.

---

## Final Conclusion

After reviewing the schema, we confirm that the database design adheres to the principles of **3NF**. No redesign was necessary, as all tables are properly structured without redundancy or transitive dependencies.

---

## Author
Project: alx-airbnb-database  
Maintainer: Youssef HIMMI
