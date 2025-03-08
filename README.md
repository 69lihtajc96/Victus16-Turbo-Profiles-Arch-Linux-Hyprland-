# 🚀 Victus16 Turbo Profiles (Arch Linux + Hyprland)

Этот репозиторий содержит конфигурации и скрипты для переключения режимов производительности и охлаждения для ноутбука HP Victus 16 с Ryzen 5 5600H и RTX 3060 Mobile / Max-Q на Arch Linux.

## 🔥 Установка

### 📌 Зависимости

```bash
yay -S cpupower ryzenadj nvidia-utils lm_sensors libnotify libcanberra mako
git clone https://github.com/your-username/Victus16-Turbo-Profiles ~/.config/hypr/scripts
```

### 📌 Настройка sudo без пароля

Добавь следующие строки в `sudoers` через `visudo`:

```ini
username ALL=(root) NOPASSWD: /usr/bin/cpupower, /usr/bin/ryzenadj, /usr/bin/nvidia-smi, /home/your-username/.config/hypr/scripts/omen-fan.py
```

> **Заменить:** `your-username` на твоё имя пользователя!

---

## ⚙️ Установка и настройка

### Сделать скрипт исполняемым:

```bash
chmod +x ~/.config/hypr/scripts/mode_switch.sh
chmod +x ~/.config/hypr/scripts/omen-fan.py
```

### Добавить бинды в Hyprland

Добавь в конфиг `~/.config/hypr/keybindings.conf`:

```ini
bind = SUPER, F11, exec, ~/.config/hypr/scripts/mode_switch.sh max
bind = SUPER, F10, exec, ~/.config/hypr/scripts/mode_switch.sh balanced
bind = SUPER, F9, exec, ~/.config/hypr/scripts/mode_switch.sh powersave
```

Перезагрузить конфиг:
```bash
hyprctl reload
```

---

## 🔥 Режимы работы:

- **Максимальная производительность:** 54Вт CPU, 95W GPU, вентиляторы 100%
- **Баланс:** 40W CPU, 80W GPU, авто-режим вентиляторов
- **Энергосбережение:** 25W CPU, 60W GPU

---

## 📌 Проверка работы

```bash
watch -n 1 sensors
nvidia-smi
cpupower frequency-info
```

---

Теперь твой HP Victus 16 готов разрывать любые задачи быстро, стабильно и с минимальным нагревом! 🔥🚀

