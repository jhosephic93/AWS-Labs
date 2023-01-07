# S3

- Puede crear hasta 100 buckets en cada cuenta
- Los archivos  puede ocupar  desde  0 Bytes hasta 5 TB.
- Amazon  garantiza  una disponibilidad  del 99.99% para la plataforma S3.
- Amazon garantiza una durabilidad del 99.999999999 %  para los datos en S3 (11 x  9“s).
- Proteger datos de Accidental Deletion se usa.
  - Versioning
  - MFA - Requiere Versioning habilitado.

***

# Leveraging Presigned with S3

1. Create Bucket S3.
    - Upload a file to the bucket.

2. Create a Presigned URL.
    - Select the object and, from the **Actions** menu, select **Share with a presigned URL.**

3. Test the presigned URL.
    - Attempt to access the file using the presigned URL.

4. Try to Access Our File Anonymously.
    - We should see an **Access Denied** message.

![image](./img/presigneds3.jpg)
