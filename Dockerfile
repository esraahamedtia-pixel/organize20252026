# استخدم Python 3.10
FROM python:3.10-slim

# اضبطي مجلد العمل
WORKDIR /app

# نسخ ملف المتطلبات
COPY requirements.txt .

# تثبيت المتطلبات
RUN pip install --no-cache-dir -r requirements.txt

# نسخ باقي ملفات المشروع
COPY . .

# البورت الذي سيعمل عليه التطبيق
EXPOSE 8080

# تشغيل البوت
CMD ["python", "main.py"]
