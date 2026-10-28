# 🪙 CampusCoin — Campus life. Money made simpler.
> **Student Personal Finance, Roommate Expense Splitter & Financial Literacy App** built for Indian college hackathons with React Native, TypeScript & Expo.

---

## 📱 What is CampusCoin?
**CampusCoin** is a modern, student-centric fintech application tailored for college students, roommates, and campus life:

1. **Split & Roomies**: Full shared expense management for flats, roommates, trips, groceries, and canteen bills. Supports equal (with paise remainder precision), exact, and percentage splits, debt simplification, and zero-sum settlement tracking.
2. **Personal Spend Analyser**: Daily ₹500 budget tracking, responsive SVG Donut Chart with dynamic text scaling, category breakdown, and over-budget warnings.
3. **Multi-Milestone Savings Goals**: Create and track multiple custom goals (e.g., Headphones, Goa Trip, Tech Buffer) with simulated deposits and celebration alerts.
4. **Smart Cross-Feature Sync**: Option to automatically sync your individual share from group bills into daily personal spending analytics.
5. **Campus Academy**: Non-repetitive 20-question financial literacy quiz with progress tracking and tap-to-flip flashcards on UPI safety, CIBIL, compound interest, and inflation.
6. **Authentication & Quick Demo Mode**: Secure login/registration with password visibility toggle, plus a **1-Tap Quick Demo Login (Aarav Sharma)** for instant judge evaluation.
7. **Customizable Settings**: Adjust daily and monthly budget limits with instant dashboard reflection, switch Dark/Light themes, or reset sample data.
8. **Campus Deal Finder**: Curated student discounts (GitHub Student Developer Pack, Spotify ₹59, IRCTC, Notion, IndiGo).

---

## 🧮 Mathematical Integrity of "Split & Roomies"
The Split engine implements a professional double-entry accounting ledger:
- **Net Balance Formula**:
  $$\text{Net Balance}(M) = (\text{Total Paid Upfront} - \text{Total Assigned Shares}) + (\text{Settled Sent} - \text{Settled Received})$$
- **Fundamental Invariant**:
  $$\sum_{M \in \text{Group}} \text{Net Balance}(M) \equiv 0.00$$
- **Paise Precision**:
  Equal splits distribute remaining cents/paise so that the sum of shares matches the total amount down to ₹0.01 (e.g. ₹100 split 3 ways yields `[33.34, 33.33, 33.33]`, exactly ₹100.00).
- **Minimum Cash Flow Settlement**:
  Greedy debt simplification pairs debtors with creditors, reducing payments: *"You owe Rohan ₹300"* or *"Priya owes you ₹250"*.

---

## 🚀 How to Run Locally (Expo Go)

### 1. Open Terminal in the Project Directory
```bash
cd /Users/riyush7/.gemini/antigravity/scratch/finsaathi
```

### 2. Start the Development Server
```bash
./start.sh
```
*(or run `npx expo start`)*

### 3. Open on Your Phone
- **Android**: Open **Expo Go** app and tap **"Scan QR code"**.
- **iPhone (iOS)**: Open your iPhone **Camera** app, point it at the terminal QR code, and tap the yellow **"Open in Expo Go"** banner.

---

## 🧪 Automated Verification Suite
Run the test suite verifying split algorithms, zero-sum balance invariants, quiz non-repetition, and savings goals:
```bash
node scripts/verifyAllFeatures.js
```
*(All 7 test suites pass with 0 failures)*
