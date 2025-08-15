# Laravel User Management with Filters, Pagination & Dependent Dropdown

## 📌 Description
This Laravel project is a **User Management System** where users can be filtered dynamically by **name, age range, division, district, and thana**.  
It also includes **AJAX-based dependent dropdowns**, so selecting a Division automatically loads related Districts, and selecting a District loads related Thanas.  
The results are paginated with **10 users per page**, and filters remain applied while switching between pages.

---

## 🚀 Features
- 🔍 **Dynamic Filtering**
  - Search by Name
  - Filter by Age range
  - Filter by Division, District, Thana
- 📄 **Pagination with Filters**
  - 10 records per page
  - Filters remain applied while navigating pages
- ⚡ **AJAX Dependent Dropdowns**
  - Division → District
  - District → Thana
- 🎯 **Clean & Optimized**
  - Uses `when()` for conditional queries
  - `withQueryString()` for preserving filters in pagination
  - Returns JSON for AJAX calls

---

## 🛠️ Tech Stack
- **Backend:** Laravel 11+
- **Frontend:** Blade, Alpine.js, Bootstrap/Tailwind (as per setup)
- **Database:** MySQL
- **AJAX:** jQuery / Fetch API

---

## 📂 Installation & Setup
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
2. **Install dependencies
    ```bash 
   composer install
   npm install && npm run dev
3. **Setup environment
   ```bash 
   cp .env.example .env
   php artisan key:generate
4. **Run migrations & seeders
    ```bash
    php artisan migrate --seed
5. **Start the server
   ```bash
   php artisan serve
📜 License
This project is open-source and available under the MIT License.

   
