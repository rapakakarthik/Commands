## Title: Cloudflare Setup for GoDaddy Domain – "rapakakarthik.shop"

Goal:
Integrate your GoDaddy domain rapakakarthik.shop into Cloudflare for DNS management, security, performance boost (CDN), and analytics.

https://lookup.icann.org/en/lookup 
This URL will help to check the full details of Domain register with this link we can check domain details expire date , who is the register 


####################################################################################################################################################
Sure, here is the **full document content** you can copy and save:

---

# 🌐 Cloudflare Setup for GoDaddy Domain (rapakakarthik.shop)

## 🏁 **Task Title**

**Integrating GoDaddy Domain with Cloudflare DNS Management**

---

## 🎯 **Objective**

To connect the domain `rapakakarthik.shop` (purchased from GoDaddy) with Cloudflare for better DNS management, performance optimization, and security features like DDoS protection, firewall rules, caching, and more.

---

## ✅ **Prerequisites**

1. **GoDaddy Account Access**

   * You should have purchased the domain from [GoDaddy](https://godaddy.com).
   * Make sure you know your domain name and have access to DNS settings.

2. **Cloudflare Account**

   * Create a free account at [Cloudflare.com](https://www.cloudflare.com/).
   * Login ready.

3. **Basic Details**

   * Decide what records you want to add:

     * Example:

       * `A` record pointing to your server/EC2 IP.
       * `CNAME` for subdomains.
       * `TXT` records (for verifications if needed).
     * SSL (HTTPS) setup plan (optional now, but recommended later).

---

## 🪜 **Steps to Integrate GoDaddy Domain with Cloudflare**

### Step 1️⃣: Add Domain in Cloudflare

1. Login to [Cloudflare](https://dash.cloudflare.com).
2. Click “**Add a Site**”.
3. Enter your domain name → `rapakakarthik.shop` → Click **Next**.
4. Choose **Free Plan** → Click **Continue**.

---

### Step 2️⃣: Cloudflare Will Scan DNS Records

* Cloudflare automatically fetches existing DNS records from GoDaddy.
* Review all records (A, CNAME, MX, etc.)
* Add/edit if anything is missing.

  * Example: Add `A` record:

    * Name: `@`
    * IPv4 Address: `your-server-ip`
    * TTL: Auto
    * Proxy status: On (orange cloud)
  * Add `A` record for subdomain if needed:

    * Name: `www` or `api`
    * IPv4 Address: `your-server-ip`

Click **Continue** when done.

---

### Step 3️⃣: Update Nameservers in GoDaddy

Cloudflare will show **2 nameservers** (example):

* `lara.ns.cloudflare.com`
* `mark.ns.cloudflare.com`

Now:

1. Login to your [GoDaddy](https://godaddy.com) account.
2. Go to “My Products” → Find your domain → Click **DNS**.
3. Scroll to **Nameservers** → Click **Change**.
4. Select “**Custom**” → Enter the two nameservers provided by Cloudflare.
5. Save changes.

---

### Step 4️⃣: Wait for Propagation

* DNS Nameserver changes may take **few minutes to 24 hours** to reflect globally.
* Cloudflare will monitor and show "**Active**" once the domain is connected.

---

## 🔐 Optional: Enable HTTPS

After propagation:

* Go to Cloudflare dashboard → Select your domain.
* Click on **SSL/TLS** → Choose **Full** or **Flexible** (based on your backend).
* This enables free SSL certificate from Cloudflare.

---

## 🔍 Bonus: Test if It Works

* Run in command line:

```bash
nslookup rapakakarthik.shop
```

* It should return Cloudflare IPs (if proxied) and show updated status.

---

## 📌 Benefits of Using Cloudflare

| Feature         | Use                                             |
| --------------- | ----------------------------------------------- |
| DNS Management  | Faster resolution, global CDN                   |
| DDoS Protection | Protects from fake/bot traffic                  |
| Firewall Rules  | Filter traffic by country/IP/user-agent         |
| Page Rules      | Redirects, caching rules, security headers      |
| Analytics       | See real-time traffic, threats, bandwidth usage |
| Free SSL        | Easy HTTPS without manual certificate installs  |

---

## 💡 Notes

* Keep both GoDaddy and Cloudflare accounts handy.
* All future DNS management is done **from Cloudflare**, not GoDaddy.
* You can always disable proxy (orange cloud → grey) for testing or debugging.

---

Let me know if you want the **next task** like:

* Adding subdomain (`api.rapakakarthik.shop`)
* Setting up backend with A records
* Enabling security rules or caching

I'm ready 🚀
