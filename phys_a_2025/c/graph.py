# import pandas as pd
# import matplotlib.pyplot as plt

# # === НАСТРОЙКИ ===
# file_path = "term_dos64_J0_1.dat"

# # === ЗАГРУЗКА ===
# # sep=r"\s+" означает "один или несколько пробелов/табов"
# df = pd.read_csv(file_path, sep=r"\s+", engine="python")

# print("Столбцы:", df.columns.tolist())
# print(df.head())

# # === ВЫБОР ДАННЫХ ===
# x = df.iloc[:, 0]        # первый столбец — X
# y_columns = df.columns[1:]  # остальные — Y

# # === ПОСТРОЕНИЕ ===
# plt.figure()

# for col in y_columns:
#     plt.plot(x, df[col], label=col)

# plt.xlabel(df.columns[0])
# plt.ylabel("Values")
# plt.legend()
# plt.grid()

# plt.show()


import pandas as pd
import matplotlib.pyplot as plt
import numpy as np


# Настройка шрифта для всех элементов графика
plt.rcParams.update({
    "font.size": 16,            # размер шрифта
    "font.family": "serif",      # шрифт, можно "Times New Roman", "DejaVu Serif"
    "axes.labelsize": 18,        # размер подписей осей
    "axes.titlesize": 20,        # размер заголовка
    "xtick.labelsize": 14,       # размер подписей делений X
    "ytick.labelsize": 14        # размер подписей делений Y
})


# --- Загрузка данных ---
# sep=r"\s+" означает "один или несколько пробелов/табов"
df = pd.read_csv("term_dos_new2_J0.dat", sep=r"\s+", engine="python")

x = df.iloc[:, 0]   # первый столбец — X
y = df.iloc[:, 4]   # пятый столбец
y_safe = np.where(y != 0, 1 / y, np.nan)

mask = (x >= 0) & (x <= 5)

# --- Построение графиков ---

# plt.subplots(figsize=(6,6))  # размер фигуры

# Первый график: 1/y
plt.plot(x[mask], y_safe[mask], color="blue")


# --- Выбор правой части (например, x > 3.5) ---
mask2 = x > 3.5
x_right = x[mask2]
y_right = y_safe[mask2]

# --- Линейная аппроксимация правой части ---
k, b = np.polyfit(x_right, y_right, 1)


# --- Продление прямой ---
# Берем диапазон X немного больше исходного
x_extended = np.linspace(x_right.min() - 7, x_right.max(), 100)
y_extended = k * x_extended + b


plt.plot(x_extended, y_extended, label=f"Прямая аппроксимации: y={k:.2f}*x+{b:.2f}", color="red", linestyle="--")


# # Второй график: прямая (например y = 2*x + 1)
# y_line = 3 * x + 700
# plt.plot(x, y_line, label="Прямая 2*x+1", color="red", linestyle="--")


# Настройка графика
plt.xlabel("T")
#plt.ylabel(df.columns[4])
plt.ylabel(r"1/$\chi$")
plt.title("(c)")
# plt.xscale('log')  # логарифмическая ось X
# plt.yscale('log')  # логарифмическая ось Y


# === ДИАПАЗОНЫ ===
plt.xlim(0, )     # X от 0 до 10
plt.ylim(0, )    # Y от -5 до 20

# plt.grid()


plt.tight_layout()
# Сохранение графика в файл
plt.savefig("c.png", dpi=300, bbox_inches='tight')  # формат можно изменить: .png, .jpg, .pdf, .svg
plt.show()
