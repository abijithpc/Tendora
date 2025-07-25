# 🌟 Trendora - UI Design & Notification Integration

Trendora is a modern e-commerce mobile and web app built with Flutter. This project focuses on building a clean and responsive UI and integrates a real-time notification system using REST API.

---

## 🎨 UI Design Highlights

| Page               | Description                                 |
|--------------------|---------------------------------------------|
| 🏠 Home Screen     | Banner slider, trending products, categories, Search|
| 📬 Notification    | Lists all in-app notifications with timestamp |

### 🖼️ Figma Inspired UI

- Fully responsive across mobile and web
- Built using `MediaQuery`,
- Modular widgets and reusable components
- Lucide Icons used for modern, minimal icons
---

## 🔔 Notification System with API Integration

### ✅ Features

- Show notification badge count on bell icon
- Fetch notifications using REST API from backend (or Firebase)
- Display human-readable time (e.g., _2 days ago, 38 minutes ago_)

### 📦 API Endpoint Example

```http
GET /api/notifications?userId={user_id}
