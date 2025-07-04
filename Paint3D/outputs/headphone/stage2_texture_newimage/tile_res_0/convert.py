import cv2
import numpy as np

# 讀入圖片（BGR 格式）
img = cv2.imread("albedo.png")

# 複製一份當作輸出
output = img.copy()

# 將 R 通道做 255 - R 的反轉
output[:, :, 2] = 255 - output[:, :, 2]

# 儲存結果
cv2.imwrite("output_inverted_red.png", output)

