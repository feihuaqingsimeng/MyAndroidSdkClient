.class public Lcom/ta/utdid2/android/utils/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AESUtils"

.field public static t:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ta/utdid2/android/utils/AESUtils;->t:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x37t
        0x44t
        0x43t
        0x31t
        0x42t
        0x45t
        0x32t
        0x32t
        0x35t
        0x38t
        0x35t
        0x35t
        0x34t
        0x43t
        0x46t
        0x30t
        0x32t
        0x43t
        0x35t
        0x37t
        0x42t
        0x37t
        0x38t
        0x45t
        0x37t
        0x34t
        0x30t
        0x41t
        0x35t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 101
    const-string v0, "0123456789ABCDEF"

    .line 102
    .local v0, "HEX":Ljava/lang/String;
    const-string v1, "0123456789ABCDEF"

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0123456789ABCDEF"

    and-int/lit8 v3, p1, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/ta/utdid2/android/utils/AESUtils;->getRawKey([B)[B

    move-result-object v3

    .line 33
    .local v3, "rawKey":[B
    invoke-static {p1}, Lcom/ta/utdid2/android/utils/AESUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 34
    .local v2, "enc":[B
    invoke-static {v3, v2}, Lcom/ta/utdid2/android/utils/AESUtils;->decrypt([B[B)[B

    move-result-object v4

    .line 35
    .local v4, "result":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v2    # "enc":[B
    .end local v3    # "rawKey":[B
    .end local v4    # "result":[B
    :goto_0
    return-object v0

    .line 37
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static decrypt([B[B)[B
    .locals 6
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 67
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 68
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 69
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 68
    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 70
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 71
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "clearText"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 18
    .local v2, "result":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/ta/utdid2/android/utils/AESUtils;->getRawKey([B)[B

    move-result-object v1

    .line 19
    .local v1, "rawkey":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ta/utdid2/android/utils/AESUtils;->encrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 22
    .end local v1    # "rawkey":[B
    :goto_0
    if-eqz v2, :cond_0

    .line 23
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/AESUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 26
    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 20
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static encrypt([B[B)[B
    .locals 6
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 57
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 58
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 59
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 58
    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 61
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/ta/utdid2/android/utils/AESUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getRawKey([B)[B
    .locals 4
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/ta/utdid2/android/utils/AESUtils;->t:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/AESUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toByte(Ljava/lang/String;)[B
    .locals 5
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 84
    .local v1, "len":I
    new-array v2, v1, [B

    .line 85
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 87
    return-object v2

    .line 86
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/AESUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .locals 3
    .param p0, "buf"    # [B

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const-string v2, ""

    .line 97
    :goto_0
    return-object v2

    .line 93
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 94
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 95
    :cond_1
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/ta/utdid2/android/utils/AESUtils;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
