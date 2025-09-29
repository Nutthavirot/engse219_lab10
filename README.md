# engse219_lab10
67543210026-0 นายณัฐวิโรจน์ สุทธิธารมงคล

# Lab10-WebAPI

โปรเจ็กต์นี้เป็น Web API สำหรับจัดการข้อมูลสินค้า (Products) ด้วย PHP + MySQL บน XAMPP โดยสามารถดู เพิ่ม แก้ไข และลบสินค้าได้ ข้อมูลส่งออกในรูปแบบ JSON

---

## **1. โครงสร้างโฟลเดอร์โปรเจ็กต์**
```
lab10/
├── db.php # ตั้งค่าเชื่อมต่อฐานข้อมูล
├── products.php # Web API หลัก
└── lab10.sql # ไฟล์ฐานข้อมูลพร้อมข้อมูลตัวอย่าง
```

---

## **2. การติดตั้ง**

1. ติดตั้ง XAMPP และเปิด **Apache** และ **MySQL**  
2. นำโฟลเดอร์ `lab10` ไปวางที่  C:\xampp\htdocs\
3. นำไฟล์ `lab10.sql` ไป Import ใน **phpMyAdmin**  
- เปิด http://localhost/phpmyadmin  
- คลิก **Import** → เลือกไฟล์ → กด **Go**  
4. แก้ไขไฟล์ `db.php` หากมีการตั้งค่าฐานข้อมูลแตกต่างจากเดิม

---

## **3. การเรียกใช้งาน API**

### **3.1 ดูสินค้าทั้งหมด**
```
GET http://localhost/lab10-api/api.php
```
- ตัวอย่างภาพผลลัพธ์

<img width="739" height="471" alt="image" src="https://github.com/user-attachments/assets/8be5b973-d473-4766-b6e9-0b1542dea31b" />

### **3.2 ดูสินค้ารายการเดียว**
```
GET http://localhost/lab10-api/api.php?id=1
```
- ตัวอย่างภาพผลลัพธ์

<img width="1368" height="680" alt="Screenshot 2025-09-29 103957" src="https://github.com/user-attachments/assets/8c034687-876f-4d62-9951-fc9eb3e11404" />

### **3.3 เพิ่มสินค้า**
```
POST http://localhost/lab10-api/api.php
```
- ตัวอย่างภาพผลลัพธ์

<img width="1386" height="701" alt="Screenshot 2025-09-29 110625" src="https://github.com/user-attachments/assets/a44f6142-2ea2-46d3-b775-bdce34f6ee88" />
<img width="1310" height="381" alt="Screenshot 2025-09-29 110710" src="https://github.com/user-attachments/assets/e07188ac-45a6-4233-bfc6-18462268e51b" />

### **3.4 แก้ไขสินค้า**
```
PUT http://localhost/lab10-api/api.php?id=1
```
- ตัวอย่างภาพผลลัพธ์

<img width="1372" height="691" alt="Screenshot 2025-09-29 112235" src="https://github.com/user-attachments/assets/6cbbd9f7-f850-42f2-a910-2c30536a5872" />
<img width="1296" height="346" alt="Screenshot 2025-09-29 112307" src="https://github.com/user-attachments/assets/918fc002-3ac5-42b1-913c-e3bf5adb4ac3" />


### **3.5 ลบสินค้า**
```
DELETE http://localhost/lab10-api/api.php?id=1
```
- ตัวอย่างภาพผลลัพธ์

<img width="1365" height="713" alt="Screenshot 2025-09-29 110739" src="https://github.com/user-attachments/assets/0dda8840-a83b-43df-8675-a69416c3a68d" />
<img width="1305" height="347" alt="Screenshot 2025-09-29 110800" src="https://github.com/user-attachments/assets/8e732054-adbb-4279-ab6a-9446478a6e6c" />

---

## **4. หมายเหตุ**

API นี้ใช้ PHP + MySQL (XAMPP)

ข้อมูลสินค้าตัวอย่างมีทั้งหมด 20 รายการ
