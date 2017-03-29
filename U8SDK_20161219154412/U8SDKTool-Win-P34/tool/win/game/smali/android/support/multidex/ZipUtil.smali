.class final Landroid/support/multidex/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/multidex/ZipUtil$CentralDirectory;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x4000

.field private static final ENDHDR:I = 0x16

.field private static final ENDSIG:I = 0x6054b50


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroid/support/multidex/ZipUtil$CentralDirectory;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x4000

    const/4 v7, 0x0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iget-wide v3, p1, Landroid/support/multidex/ZipUtil$CentralDirectory;->size:J

    iget-wide v5, p1, Landroid/support/multidex/ZipUtil$CentralDirectory;->offset:J

    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v2, v5

    const/16 v5, 0x4000

    new-array v0, v5, [B

    invoke-virtual {p0, v0, v7, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    :goto_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    invoke-virtual {v1, v0, v7, v2}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v5, v2

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v5

    return-wide v5

    :cond_1
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v2, v5

    invoke-virtual {p0, v0, v7, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_0
.end method

.method static findCentralDirectory(Ljava/io/RandomAccessFile;)Landroid/support/multidex/ZipUtil$CentralDirectory;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    const-wide v13, 0xffffffffL

    const-wide/16 v11, 0x0

    const/4 v10, 0x2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x16

    sub-long v2, v6, v8

    cmp-long v6, v2, v11

    if-gez v6, :cond_0

    new-instance v6, Ljava/util/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File too short to be a zip file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const-wide/32 v6, 0x10000

    sub-long v4, v2, v6

    cmp-long v6, v4, v11

    if-gez v6, :cond_1

    const-wide/16 v4, 0x0

    :cond_1
    const v6, 0x6054b50

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    :cond_2
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    if-ne v6, v1, :cond_3

    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    invoke-virtual {p0, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    new-instance v0, Landroid/support/multidex/ZipUtil$CentralDirectory;

    invoke-direct {v0}, Landroid/support/multidex/ZipUtil$CentralDirectory;-><init>()V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v13

    iput-wide v6, v0, Landroid/support/multidex/ZipUtil$CentralDirectory;->size:J

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v13

    iput-wide v6, v0, Landroid/support/multidex/ZipUtil$CentralDirectory;->offset:J

    return-object v0

    :cond_3
    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    new-instance v6, Ljava/util/zip/ZipException;

    const-string v7, "End Of Central Directory signature not found"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static getZipCrc(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Landroid/support/multidex/ZipUtil;->findCentralDirectory(Ljava/io/RandomAccessFile;)Landroid/support/multidex/ZipUtil$CentralDirectory;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/multidex/ZipUtil;->computeCrcOfCentralDir(Ljava/io/RandomAccessFile;Landroid/support/multidex/ZipUtil$CentralDirectory;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method
