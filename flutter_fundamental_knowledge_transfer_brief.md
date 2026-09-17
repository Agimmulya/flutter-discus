# Flutter Fundamental — Knowledge Transfer Brief

## 1. Mental Model: Everything is a Widget & Declarative UI

**Analogi Web:** HTML, CSS, JS/TS, React/Vue.

- UI adalah refleksi dari state (`UI = f(state)`), bukan manipulasi DOM langsung.
- Widget Tree → mirip DOM Tree.
- `StatelessWidget` vs `StatefulWidget`.
- Lifecycle sederhana:
  - `initState()`
  - `build()`
  - `dispose()`

---

## 2. Layout & Styling

**Analogi Web:** CSS / Flexbox.

### Flexbox Flutter

- `Column` & `Row` → `flex-direction: column / row`.
- `MainAxisAlignment` & `CrossAxisAlignment` → `justify-content` & `align-items`.

### Spacing & Sizing

- `Padding`
- `SizedBox`
- `Expanded`
- `Flexible`

### Stacking

- `Stack` & `Positioned` → `position: relative` & `absolute`.

### Scrollable Views

- `SingleChildScrollView`
- `ListView.builder`
- Konsep rendering efisien / lazy loading.

---

## 3. Asynchronous Dart & Data Fetching

**Analogi Web:** Dart `Future` dan `async`/`await` → `Promise` di JavaScript/TypeScript.

### Topik

- Dasar `async`/`await`.
- `FutureBuilder` untuk loading, error, dan success state.
- HTTP request sederhana menggunakan `http` atau `dio`.
- Serialisasi JSON ke Model Class.

---

## 4. Navigation & Routing

**Analogi Web:** URL path dan history stack.

### Topik

- `Navigator.push` & `Navigator.pop`.
- Passing data antar halaman menggunakan constructor.

---

## 5. Mobile Nuances

Hal-hal yang tidak terlalu relevan di web:

### SafeArea

Memahami penggunaan `SafeArea` untuk menghindari notch, status bar, dan home indicator.

### Keyboard Handling

- `RenderFlex overflowed`.
- `resizeToAvoidBottomInset`.
- `SingleChildScrollView`.

### Platform Behavior

- Material Design (Android).
- Cupertino (iOS).

---

# Saran Alur Sesi Mentoring

| Pertemuan | Fokus Materi | Praktik / Output |
|---|---|---|
| **Sesi 1** | Dart crash course singkat, Mental model Widget, Stateless vs Stateful | Bikin halaman statis profil / kartu nama. |
| **Sesi 2** | Layouting (`Row`, `Column`, `Stack`, `ListView.builder`) | Bikin tiruan satu halaman UI sederhana (e.g., feed list). |
| **Sesi 3** | Form, Input, Navigation, & Safe Area | Bikin form login/input data dan navigasi ke halaman detail. |
| **Sesi 4** | Async Dart, JSON Serialization, `FutureBuilder` | Konsumsi public API gratis dan tampilkan ke list. |

---

## Next Step

Setelah empat sesi fundamental ini aman, programmer siap masuk ke materi **State Management** (Provider, Riverpod, BLoC, atau MobX) sesuai teknologi yang digunakan di project.

**Catatan:** State management yang digunakan di kantor perlu ditentukan agar materi dapat disinkronkan dari awal.
