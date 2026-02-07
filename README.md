# Employee Database SQL Script

Repository ini berisi script SQL untuk mengelola data employee meliputi:
- Insert data karyawan
- Update data berdasarkan posisi
- Perhitungan total salary berdasarkan tahun 2021
- Sorting berdasarkan pengalaman kerja
- Penggunaan subquery
- Script dibuat agar dapat dijalankan tanpa error dan menggunakan logika database yang benar.

---

## 📂 Struktur Tabel

```sql
CREATE TABLE employees(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    position VARCHAR(50),
    join_date DATE,
    release_date DATE,
    year_of_experience FLOAT,
    salary INT
);
```

---

## 📥 Insert Data Employee
```sql
INSERT INTO employees (name, position, join_date, release_date, year_of_experience, salary) VALUES
('Jacky', 'Solution Architect', '2018-07-25', '2022-07-25', 8, 150),
('John', 'Assistant Manager', '2016-02-02', '2021-02-02', 12, 155),
('Alano', 'Manager', '2010-11-09', NULL, 14, 175),
('Aaron', 'Engineer', '2021-08-16', '2022-08-16', 1, 80),
('Allen', 'Engineer', '2024-06-06', NULL, 4, 75),
('Peter', 'Team Leader', '2020-01-09', NULL, 3, 85);
```

---

## 1️⃣ Insert Employee Baru

Menambahkan employee baru dengan data berikut:
- Nama: Albert
- Posisi: Engineer
- Join Date: 24 Januari 2024
- Experience: 2.5 tahun
- Salary: $50

```sql
INSERT INTO employees (name, position, join_date, year_of_experience, salary)
VALUES ('Albert', 'Engineer', '2024-01-24', 2.5, 50);
```


![no1](/doc/no1.jpg)

---

## 2️⃣ Update Salary Engineer

Mengubah salary semua employee dengan posisi Engineer menjadi $85.

```sql
update employees set salary = 85 where position = 'Engineer';
```

![no2](/doc/no2.jpg)

---

## 3️⃣ Total Pengeluaran Salary Tahun 2021

Menghitung total salary employee yang aktif di tahun 2021.

```sql
select sum(salary) as total_salary_2021 from employees where join_date <= '2021-12-31'
and (release_date >= '2021-1-1' or release_date = null);
```

![no3](/doc/no3.jpg)

---

## 4️⃣ Top 3 Employee dengan Experience Terbanyak

```sql
select name, position, join_date, release_date, year_of_experience, salary from employees
order by year_of_experience desc limit 3;
```

![no4](/doc/no4.jpg)

---

5️⃣ Subquery Engineer dengan Experience ≤ 3 Tahun

```sql
select * from employees where name
in(select name from employees where year_of_experience <= 3);
```

![no5](/doc/no5.jpg)

---

## ✅ Catatan

- Salary disimpan dalam bentuk numerik untuk memudahkan perhitungan
- Format tanggal menggunakan standar YYYY-MM-DD
- Script kompatibel dengan MySQL / MariaDB / PostgreSQL

---

## 🧪 Hasil Pengujian

Semua query berhasil dijalankan tanpa error dan menghasilkan output sesuai kebutuhan tugas.