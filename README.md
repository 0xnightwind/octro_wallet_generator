# 🪙 Octro Wallet Generator

Easily generate your Octro wallet from the command line. This script sets up everything you need and launches the wallet generator server on port `8888`.

---

## 🚀 Quick Start (1-Liner Install)

Run this in your terminal:

```bash
bash <(wget -qO- https://raw.githubusercontent.com/0xnightwind/octro_wallet_generator/refs/heads/main/wallet_gen.sh)
```

---

## 📦 What It Does

* Installs essential packages: `sudo`, `curl`, `git`, `build-essential`
* Installs [Bun](https://bun.sh), a fast JS runtime
* Clones the wallet generator from [Octra Labs](https://github.com/octra-labs/wallet-gen)
* Installs dependencies with Bun
* Opens port `8888` in your firewall
* Starts the wallet generator

---

## 🌐 Access the Wallet Generator

After setup, open your browser and visit:

```
http://<your-public-ip>:8888
```

Your IP will be displayed in the terminal output.

---

## 🔐 Important

Make sure to **securely save** the following generated items:

* Mnemonic phrase
* Private key
* Public key
* Octro address

> Once you're done, press `CTRL + C` in the terminal to stop the server.

---

## 🧹 Uninstall

To remove everything:

```bash
rm -rf ~/.bun wallet-gen
```

---

## 📄 License

MIT License © [0xnightwind](https://github.com/0xnightwind) / [Octra Labs](https://github.com/octra-labs)

