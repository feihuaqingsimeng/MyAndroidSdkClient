.class public final Lcom/asyx/jdsdk/O;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/asyx/jdsdk/O;

.field private static b:[B


# instance fields
.field private c:[J

.field private d:[J

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    sput-object v0, Lcom/asyx/jdsdk/O;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/asyx/jdsdk/O;->d:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/asyx/jdsdk/O;->e:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/asyx/jdsdk/O;->g:[B

    invoke-direct {p0}, Lcom/asyx/jdsdk/O;->b()V

    return-void
.end method

.method private static a(B)J
    .locals 2

    if-gez p0, :cond_0

    and-int/lit16 p0, p0, 0xff

    :cond_0
    int-to-long v0, p0

    return-wide v0
.end method

.method private a(JJJJJJJ)J
    .locals 9

    and-long v2, p3, p5

    const-wide/16 v4, -0x1

    xor-long/2addr v4, p3

    and-long v4, v4, p7

    or-long/2addr v2, v4

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v4, v2

    move-wide/from16 v0, p11

    long-to-int v5, v0

    shl-int/2addr v4, v5

    long-to-int v2, v2

    const-wide/16 v6, 0x20

    sub-long v6, v6, p11

    long-to-int v3, v6

    ushr-int/2addr v2, v3

    or-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v2, p3

    return-wide v2
.end method

.method public static a()Lcom/asyx/jdsdk/O;
    .locals 2

    const-string v1, ""

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/asyx/jdsdk/O;->a:Lcom/asyx/jdsdk/O;

    if-nez v0, :cond_0

    new-instance v0, Lcom/asyx/jdsdk/O;

    invoke-direct {v0}, Lcom/asyx/jdsdk/O;-><init>()V

    sput-object v0, Lcom/asyx/jdsdk/O;->a:Lcom/asyx/jdsdk/O;

    :cond_0
    sget-object v0, Lcom/asyx/jdsdk/O;->a:Lcom/asyx/jdsdk/O;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a([B)V
    .locals 71

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v3, 0x1

    aget-wide v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v3, 0x2

    aget-wide v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v3, 0x3

    aget-wide v10, v2, v3

    const/16 v2, 0x10

    new-array v0, v2, [J

    move-object/from16 v70, v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v12, 0x40

    if-lt v2, v12, :cond_0

    const/4 v2, 0x0

    aget-wide v12, v70, v2

    const-wide/16 v14, 0x7

    const-wide v16, 0xd76aa478L

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v17}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v16

    const/4 v2, 0x1

    aget-wide v22, v70, v2

    const-wide/16 v24, 0xc

    const-wide v26, 0xe8c7b756L

    move-object/from16 v13, p0

    move-wide v14, v10

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v27}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v14

    const/4 v2, 0x2

    aget-wide v20, v70, v2

    const-wide/16 v22, 0x11

    const-wide/32 v24, 0x242070db

    move-object/from16 v11, p0

    move-wide v12, v8

    move-wide/from16 v18, v6

    invoke-direct/range {v11 .. v25}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v12

    const/4 v2, 0x3

    aget-wide v18, v70, v2

    const-wide/16 v20, 0x16

    const-wide v22, 0xc1bdceeeL

    move-object/from16 v9, p0

    move-wide v10, v6

    invoke-direct/range {v9 .. v23}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v22

    const/4 v2, 0x4

    aget-wide v28, v70, v2

    const-wide/16 v30, 0x7

    const-wide v32, 0xf57c0fafL

    move-object/from16 v19, p0

    move-wide/from16 v20, v16

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    invoke-direct/range {v19 .. v33}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v20

    const/4 v2, 0x5

    aget-wide v26, v70, v2

    const-wide/16 v28, 0xc

    const-wide/32 v30, 0x4787c62a

    move-object/from16 v17, p0

    move-wide/from16 v18, v14

    move-wide/from16 v24, v12

    invoke-direct/range {v17 .. v31}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v18

    const/4 v2, 0x6

    aget-wide v24, v70, v2

    const-wide/16 v26, 0x11

    const-wide v28, 0xa8304613L

    move-object/from16 v15, p0

    move-wide/from16 v16, v12

    invoke-direct/range {v15 .. v29}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v6

    const/4 v2, 0x7

    aget-wide v12, v70, v2

    const-wide/16 v14, 0x16

    const-wide v16, 0xfd469501L

    move-object/from16 v3, p0

    move-wide/from16 v4, v22

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    invoke-direct/range {v3 .. v17}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v26

    const/16 v2, 0x8

    aget-wide v32, v70, v2

    const-wide/16 v34, 0x7

    const-wide/32 v36, 0x698098d8

    move-object/from16 v23, p0

    move-wide/from16 v24, v20

    move-wide/from16 v28, v6

    move-wide/from16 v30, v18

    invoke-direct/range {v23 .. v37}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v24

    const/16 v2, 0x9

    aget-wide v30, v70, v2

    const-wide/16 v32, 0xc

    const-wide v34, 0x8b44f7afL

    move-object/from16 v21, p0

    move-wide/from16 v22, v18

    move-wide/from16 v28, v6

    invoke-direct/range {v21 .. v35}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v22

    const/16 v2, 0xa

    aget-wide v28, v70, v2

    const-wide/16 v30, 0x11

    const-wide v32, 0xffff5bb1L

    move-object/from16 v19, p0

    move-wide/from16 v20, v6

    invoke-direct/range {v19 .. v33}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v6

    const/16 v2, 0xb

    aget-wide v12, v70, v2

    const-wide/16 v14, 0x16

    const-wide v16, 0x895cd7beL

    move-object/from16 v3, p0

    move-wide/from16 v4, v26

    move-wide/from16 v8, v22

    move-wide/from16 v10, v24

    invoke-direct/range {v3 .. v17}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v30

    const/16 v2, 0xc

    aget-wide v36, v70, v2

    const-wide/16 v38, 0x7

    const-wide/32 v40, 0x6b901122

    move-object/from16 v27, p0

    move-wide/from16 v28, v24

    move-wide/from16 v32, v6

    move-wide/from16 v34, v22

    invoke-direct/range {v27 .. v41}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v28

    const/16 v2, 0xd

    aget-wide v34, v70, v2

    const-wide/16 v36, 0xc

    const-wide v38, 0xfd987193L

    move-object/from16 v25, p0

    move-wide/from16 v26, v22

    move-wide/from16 v32, v6

    invoke-direct/range {v25 .. v39}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v26

    const/16 v2, 0xe

    aget-wide v32, v70, v2

    const-wide/16 v34, 0x11

    const-wide v36, 0xa679438eL

    move-object/from16 v23, p0

    move-wide/from16 v24, v6

    invoke-direct/range {v23 .. v37}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v6

    const/16 v2, 0xf

    aget-wide v12, v70, v2

    const-wide/16 v14, 0x16

    const-wide/32 v16, 0x49b40821

    move-object/from16 v3, p0

    move-wide/from16 v4, v30

    move-wide/from16 v8, v26

    move-wide/from16 v10, v28

    invoke-direct/range {v3 .. v17}, Lcom/asyx/jdsdk/O;->a(JJJJJJJ)J

    move-result-wide v12

    const/4 v2, 0x1

    aget-wide v18, v70, v2

    const-wide/16 v20, 0x5

    const-wide v22, 0xf61e2562L

    move-object/from16 v9, p0

    move-wide/from16 v10, v28

    move-wide v14, v6

    move-wide/from16 v16, v26

    invoke-direct/range {v9 .. v23}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v28

    const/4 v2, 0x6

    aget-wide v34, v70, v2

    const-wide/16 v36, 0x9

    const-wide v38, 0xc040b340L

    move-object/from16 v25, p0

    move-wide/from16 v30, v12

    move-wide/from16 v32, v6

    invoke-direct/range {v25 .. v39}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v8

    const/16 v2, 0xb

    aget-wide v14, v70, v2

    const-wide/16 v16, 0xe

    const-wide/32 v18, 0x265e5a51

    move-object/from16 v5, p0

    move-wide/from16 v10, v28

    invoke-direct/range {v5 .. v19}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v14

    const/4 v2, 0x0

    aget-wide v20, v70, v2

    const-wide/16 v22, 0x14

    const-wide v24, 0xe9b6c7aaL

    move-object/from16 v11, p0

    move-wide/from16 v16, v8

    move-wide/from16 v18, v28

    invoke-direct/range {v11 .. v25}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v30

    const/4 v2, 0x5

    aget-wide v36, v70, v2

    const-wide/16 v38, 0x5

    const-wide v40, 0xd62f105dL

    move-object/from16 v27, p0

    move-wide/from16 v32, v14

    move-wide/from16 v34, v8

    invoke-direct/range {v27 .. v41}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v10

    const/16 v2, 0xa

    aget-wide v16, v70, v2

    const-wide/16 v18, 0x9

    const-wide/32 v20, 0x2441453

    move-object/from16 v7, p0

    move-wide/from16 v12, v30

    invoke-direct/range {v7 .. v21}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v16

    const/16 v2, 0xf

    aget-wide v22, v70, v2

    const-wide/16 v24, 0xe

    const-wide v26, 0xd8a1e681L

    move-object/from16 v13, p0

    move-wide/from16 v18, v10

    move-wide/from16 v20, v30

    invoke-direct/range {v13 .. v27}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v32

    const/4 v2, 0x4

    aget-wide v38, v70, v2

    const-wide/16 v40, 0x14

    const-wide v42, 0xe7d3fbc8L

    move-object/from16 v29, p0

    move-wide/from16 v34, v16

    move-wide/from16 v36, v10

    invoke-direct/range {v29 .. v43}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v12

    const/16 v2, 0x9

    aget-wide v18, v70, v2

    const-wide/16 v20, 0x5

    const-wide/32 v22, 0x21e1cde6

    move-object/from16 v9, p0

    move-wide/from16 v14, v32

    invoke-direct/range {v9 .. v23}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v18

    const/16 v2, 0xe

    aget-wide v24, v70, v2

    const-wide/16 v26, 0x9

    const-wide v28, 0xc33707d6L

    move-object/from16 v15, p0

    move-wide/from16 v20, v12

    move-wide/from16 v22, v32

    invoke-direct/range {v15 .. v29}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v34

    const/4 v2, 0x3

    aget-wide v40, v70, v2

    const-wide/16 v42, 0xe

    const-wide v44, 0xf4d50d87L

    move-object/from16 v31, p0

    move-wide/from16 v36, v18

    move-wide/from16 v38, v12

    invoke-direct/range {v31 .. v45}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v14

    const/16 v2, 0x8

    aget-wide v20, v70, v2

    const-wide/16 v22, 0x14

    const-wide/32 v24, 0x455a14ed

    move-object/from16 v11, p0

    move-wide/from16 v16, v34

    invoke-direct/range {v11 .. v25}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v20

    const/16 v2, 0xd

    aget-wide v26, v70, v2

    const-wide/16 v28, 0x5

    const-wide v30, 0xa9e3e905L

    move-object/from16 v17, p0

    move-wide/from16 v22, v14

    move-wide/from16 v24, v34

    invoke-direct/range {v17 .. v31}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v36

    const/4 v2, 0x2

    aget-wide v42, v70, v2

    const-wide/16 v44, 0x9

    const-wide v46, 0xfcefa3f8L

    move-object/from16 v33, p0

    move-wide/from16 v38, v20

    move-wide/from16 v40, v14

    invoke-direct/range {v33 .. v47}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v16

    const/4 v2, 0x7

    aget-wide v22, v70, v2

    const-wide/16 v24, 0xe

    const-wide/32 v26, 0x676f02d9

    move-object/from16 v13, p0

    move-wide/from16 v18, v36

    invoke-direct/range {v13 .. v27}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v22

    const/16 v2, 0xc

    aget-wide v28, v70, v2

    const-wide/16 v30, 0x14

    const-wide v32, 0x8d2a4c8aL

    move-object/from16 v19, p0

    move-wide/from16 v24, v16

    move-wide/from16 v26, v36

    invoke-direct/range {v19 .. v33}, Lcom/asyx/jdsdk/O;->b(JJJJJJJ)J

    move-result-wide v38

    const/4 v2, 0x5

    aget-wide v44, v70, v2

    const-wide/16 v46, 0x4

    const-wide v48, 0xfffa3942L

    move-object/from16 v35, p0

    move-wide/from16 v40, v22

    move-wide/from16 v42, v16

    invoke-direct/range {v35 .. v49}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v18

    const/16 v2, 0x8

    aget-wide v24, v70, v2

    const-wide/16 v26, 0xb

    const-wide v28, 0x8771f681L

    move-object/from16 v15, p0

    move-wide/from16 v20, v38

    invoke-direct/range {v15 .. v29}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v24

    const/16 v2, 0xb

    aget-wide v30, v70, v2

    const-wide/16 v32, 0x10

    const-wide/32 v34, 0x6d9d6122

    move-object/from16 v21, p0

    move-wide/from16 v26, v18

    move-wide/from16 v28, v38

    invoke-direct/range {v21 .. v35}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v40

    const/16 v2, 0xe

    aget-wide v46, v70, v2

    const-wide/16 v48, 0x17

    const-wide v50, 0xfde5380cL

    move-object/from16 v37, p0

    move-wide/from16 v42, v24

    move-wide/from16 v44, v18

    invoke-direct/range {v37 .. v51}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v20

    const/4 v2, 0x1

    aget-wide v26, v70, v2

    const-wide/16 v28, 0x4

    const-wide v30, 0xa4beea44L

    move-object/from16 v17, p0

    move-wide/from16 v22, v40

    invoke-direct/range {v17 .. v31}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v26

    const/4 v2, 0x4

    aget-wide v32, v70, v2

    const-wide/16 v34, 0xb

    const-wide/32 v36, 0x4bdecfa9

    move-object/from16 v23, p0

    move-wide/from16 v28, v20

    move-wide/from16 v30, v40

    invoke-direct/range {v23 .. v37}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v42

    const/4 v2, 0x7

    aget-wide v48, v70, v2

    const-wide/16 v50, 0x10

    const-wide v52, 0xf6bb4b60L

    move-object/from16 v39, p0

    move-wide/from16 v44, v26

    move-wide/from16 v46, v20

    invoke-direct/range {v39 .. v53}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v22

    const/16 v2, 0xa

    aget-wide v28, v70, v2

    const-wide/16 v30, 0x17

    const-wide v32, 0xbebfbc70L

    move-object/from16 v19, p0

    move-wide/from16 v24, v42

    invoke-direct/range {v19 .. v33}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v28

    const/16 v2, 0xd

    aget-wide v34, v70, v2

    const-wide/16 v36, 0x4

    const-wide/32 v38, 0x289b7ec6

    move-object/from16 v25, p0

    move-wide/from16 v30, v22

    move-wide/from16 v32, v42

    invoke-direct/range {v25 .. v39}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v44

    const/4 v2, 0x0

    aget-wide v50, v70, v2

    const-wide/16 v52, 0xb

    const-wide v54, 0xeaa127faL

    move-object/from16 v41, p0

    move-wide/from16 v46, v28

    move-wide/from16 v48, v22

    invoke-direct/range {v41 .. v55}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v24

    const/4 v2, 0x3

    aget-wide v30, v70, v2

    const-wide/16 v32, 0x10

    const-wide v34, 0xd4ef3085L

    move-object/from16 v21, p0

    move-wide/from16 v26, v44

    invoke-direct/range {v21 .. v35}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v30

    const/4 v2, 0x6

    aget-wide v36, v70, v2

    const-wide/16 v38, 0x17

    const-wide/32 v40, 0x4881d05

    move-object/from16 v27, p0

    move-wide/from16 v32, v24

    move-wide/from16 v34, v44

    invoke-direct/range {v27 .. v41}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v46

    const/16 v2, 0x9

    aget-wide v52, v70, v2

    const-wide/16 v54, 0x4

    const-wide v56, 0xd9d4d039L

    move-object/from16 v43, p0

    move-wide/from16 v48, v30

    move-wide/from16 v50, v24

    invoke-direct/range {v43 .. v57}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v26

    const/16 v2, 0xc

    aget-wide v32, v70, v2

    const-wide/16 v34, 0xb

    const-wide v36, 0xe6db99e5L

    move-object/from16 v23, p0

    move-wide/from16 v28, v46

    invoke-direct/range {v23 .. v37}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v32

    const/16 v2, 0xf

    aget-wide v38, v70, v2

    const-wide/16 v40, 0x10

    const-wide/32 v42, 0x1fa27cf8

    move-object/from16 v29, p0

    move-wide/from16 v34, v26

    move-wide/from16 v36, v46

    invoke-direct/range {v29 .. v43}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v48

    const/4 v2, 0x2

    aget-wide v54, v70, v2

    const-wide/16 v56, 0x17

    const-wide v58, 0xc4ac5665L

    move-object/from16 v45, p0

    move-wide/from16 v50, v32

    move-wide/from16 v52, v26

    invoke-direct/range {v45 .. v59}, Lcom/asyx/jdsdk/O;->c(JJJJJJJ)J

    move-result-wide v28

    const/4 v2, 0x0

    aget-wide v34, v70, v2

    const-wide/16 v36, 0x6

    const-wide v38, 0xf4292244L

    move-object/from16 v25, p0

    move-wide/from16 v30, v48

    invoke-direct/range {v25 .. v39}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v34

    const/4 v2, 0x7

    aget-wide v40, v70, v2

    const-wide/16 v42, 0xa

    const-wide/32 v44, 0x432aff97

    move-object/from16 v31, p0

    move-wide/from16 v36, v28

    move-wide/from16 v38, v48

    invoke-direct/range {v31 .. v45}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v50

    const/16 v2, 0xe

    aget-wide v56, v70, v2

    const-wide/16 v58, 0xf

    const-wide v60, 0xab9423a7L

    move-object/from16 v47, p0

    move-wide/from16 v52, v34

    move-wide/from16 v54, v28

    invoke-direct/range {v47 .. v61}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v30

    const/4 v2, 0x5

    aget-wide v36, v70, v2

    const-wide/16 v38, 0x15

    const-wide v40, 0xfc93a039L

    move-object/from16 v27, p0

    move-wide/from16 v32, v50

    invoke-direct/range {v27 .. v41}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v36

    const/16 v2, 0xc

    aget-wide v42, v70, v2

    const-wide/16 v44, 0x6

    const-wide/32 v46, 0x655b59c3

    move-object/from16 v33, p0

    move-wide/from16 v38, v30

    move-wide/from16 v40, v50

    invoke-direct/range {v33 .. v47}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v52

    const/4 v2, 0x3

    aget-wide v58, v70, v2

    const-wide/16 v60, 0xa

    const-wide v62, 0x8f0ccc92L

    move-object/from16 v49, p0

    move-wide/from16 v54, v36

    move-wide/from16 v56, v30

    invoke-direct/range {v49 .. v63}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v32

    const/16 v2, 0xa

    aget-wide v38, v70, v2

    const-wide/16 v40, 0xf

    const-wide v42, 0xffeff47dL

    move-object/from16 v29, p0

    move-wide/from16 v34, v52

    invoke-direct/range {v29 .. v43}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v38

    const/4 v2, 0x1

    aget-wide v44, v70, v2

    const-wide/16 v46, 0x15

    const-wide v48, 0x85845dd1L

    move-object/from16 v35, p0

    move-wide/from16 v40, v32

    move-wide/from16 v42, v52

    invoke-direct/range {v35 .. v49}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v54

    const/16 v2, 0x8

    aget-wide v60, v70, v2

    const-wide/16 v62, 0x6

    const-wide/32 v64, 0x6fa87e4f

    move-object/from16 v51, p0

    move-wide/from16 v56, v38

    move-wide/from16 v58, v32

    invoke-direct/range {v51 .. v65}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v34

    const/16 v2, 0xf

    aget-wide v40, v70, v2

    const-wide/16 v42, 0xa

    const-wide v44, 0xfe2ce6e0L

    move-object/from16 v31, p0

    move-wide/from16 v36, v54

    invoke-direct/range {v31 .. v45}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v40

    const/4 v2, 0x6

    aget-wide v46, v70, v2

    const-wide/16 v48, 0xf

    const-wide v50, 0xa3014314L

    move-object/from16 v37, p0

    move-wide/from16 v42, v34

    move-wide/from16 v44, v54

    invoke-direct/range {v37 .. v51}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v56

    const/16 v2, 0xd

    aget-wide v62, v70, v2

    const-wide/16 v64, 0x15

    const-wide/32 v66, 0x4e0811a1

    move-object/from16 v53, p0

    move-wide/from16 v58, v40

    move-wide/from16 v60, v34

    invoke-direct/range {v53 .. v67}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v36

    const/4 v2, 0x4

    aget-wide v42, v70, v2

    const-wide/16 v44, 0x6

    const-wide v46, 0xf7537e82L

    move-object/from16 v33, p0

    move-wide/from16 v38, v56

    invoke-direct/range {v33 .. v47}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v42

    const/16 v2, 0xb

    aget-wide v48, v70, v2

    const-wide/16 v50, 0xa

    const-wide v52, 0xbd3af235L

    move-object/from16 v39, p0

    move-wide/from16 v44, v36

    move-wide/from16 v46, v56

    invoke-direct/range {v39 .. v53}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v58

    const/4 v2, 0x2

    aget-wide v64, v70, v2

    const-wide/16 v66, 0xf

    const-wide/32 v68, 0x2ad7d2bb

    move-object/from16 v55, p0

    move-wide/from16 v60, v42

    move-wide/from16 v62, v36

    invoke-direct/range {v55 .. v69}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v38

    const/16 v2, 0x9

    aget-wide v44, v70, v2

    const-wide/16 v46, 0x15

    const-wide v48, 0xeb86d391L

    move-object/from16 v35, p0

    move-wide/from16 v40, v58

    invoke-direct/range {v35 .. v49}, Lcom/asyx/jdsdk/O;->d(JJJJJJJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    add-long v6, v6, v42

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v5, 0x1

    aget-wide v6, v4, v5

    add-long/2addr v2, v6

    aput-wide v2, v4, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v3, 0x2

    aget-wide v4, v2, v3

    add-long v4, v4, v38

    aput-wide v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v3, 0x3

    aget-wide v4, v2, v3

    add-long v4, v4, v58

    aput-wide v4, v2, v3

    return-void

    :cond_0
    aget-byte v12, p1, v2

    invoke-static {v12}, Lcom/asyx/jdsdk/O;->a(B)J

    move-result-wide v12

    add-int/lit8 v14, v2, 0x1

    aget-byte v14, p1, v14

    invoke-static {v14}, Lcom/asyx/jdsdk/O;->a(B)J

    move-result-wide v14

    const/16 v16, 0x8

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    add-int/lit8 v14, v2, 0x2

    aget-byte v14, p1, v14

    invoke-static {v14}, Lcom/asyx/jdsdk/O;->a(B)J

    move-result-wide v14

    const/16 v16, 0x10

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    add-int/lit8 v14, v2, 0x3

    aget-byte v14, p1, v14

    invoke-static {v14}, Lcom/asyx/jdsdk/O;->a(B)J

    move-result-wide v14

    const/16 v16, 0x18

    shl-long v14, v14, v16

    or-long/2addr v12, v14

    aput-wide v12, v70, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0
.end method

.method private a([BI)V
    .locals 11

    const/16 v9, 0x40

    const/4 v8, 0x1

    const/4 v0, 0x0

    new-array v3, v9, [B

    iget-object v1, p0, Lcom/asyx/jdsdk/O;->d:[J

    aget-wide v4, v1, v0

    const/4 v1, 0x3

    ushr-long/2addr v4, v1

    long-to-int v1, v4

    and-int/lit8 v1, v1, 0x3f

    iget-object v2, p0, Lcom/asyx/jdsdk/O;->d:[J

    aget-wide v4, v2, v0

    shl-int/lit8 v6, p2, 0x3

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v0

    shl-int/lit8 v2, p2, 0x3

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/asyx/jdsdk/O;->d:[J

    aget-wide v4, v2, v8

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v2, v8

    :cond_0
    iget-object v2, p0, Lcom/asyx/jdsdk/O;->d:[J

    aget-wide v4, v2, v8

    ushr-int/lit8 v6, p2, 0x1d

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v2, v8

    rsub-int/lit8 v2, v1, 0x40

    if-lt p2, v2, :cond_2

    iget-object v4, p0, Lcom/asyx/jdsdk/O;->e:[B

    invoke-static {v4, p1, v1, v0, v2}, Lcom/asyx/jdsdk/O;->a([B[BIII)V

    iget-object v1, p0, Lcom/asyx/jdsdk/O;->e:[B

    invoke-direct {p0, v1}, Lcom/asyx/jdsdk/O;->a([B)V

    move v1, v2

    :goto_0
    add-int/lit8 v2, v1, 0x3f

    if-lt v2, p2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/asyx/jdsdk/O;->e:[B

    sub-int v3, p2, v1

    invoke-static {v2, p1, v0, v1, v3}, Lcom/asyx/jdsdk/O;->a([B[BIII)V

    return-void

    :cond_1
    invoke-static {v3, p1, v0, v1, v9}, Lcom/asyx/jdsdk/O;->a([B[BIII)V

    invoke-direct {p0, v3}, Lcom/asyx/jdsdk/O;->a([B)V

    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    :cond_2
    move v10, v1

    move v1, v0

    move v0, v10

    goto :goto_1
.end method

.method private static a([B[BIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p4, :cond_0

    return-void

    :cond_0
    add-int v1, p2, v0

    add-int v2, p3, v0

    aget-byte v2, p1, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a([B[JI)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v6, 0xff

    move v1, v0

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    aget-wide v2, p1, v1

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    aget-wide v4, p1, v1

    const/16 v3, 0x8

    ushr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v0, 0x2

    aget-wide v4, p1, v1

    const/16 v3, 0x10

    ushr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v0, 0x3

    aget-wide v4, p1, v1

    const/16 v3, 0x18

    ushr-long/2addr v4, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method private b(JJJJJJJ)J
    .locals 9

    and-long v2, p3, p7

    const-wide/16 v4, -0x1

    xor-long v4, v4, p7

    and-long/2addr v4, p5

    or-long/2addr v2, v4

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v4, v2

    move-wide/from16 v0, p11

    long-to-int v5, v0

    shl-int/2addr v4, v5

    long-to-int v2, v2

    const-wide/16 v6, 0x20

    sub-long v6, v6, p11

    long-to-int v3, v6

    ushr-int/2addr v2, v3

    or-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v2, p3

    return-wide v2
.end method

.method private b()V
    .locals 5

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->d:[J

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->d:[J

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->c:[J

    const-wide/32 v2, 0x67452301

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->c:[J

    const-wide v2, 0xefcdab89L

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v1, 0x2

    const-wide v2, 0x98badcfeL

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->c:[J

    const/4 v1, 0x3

    const-wide/32 v2, 0x10325476

    aput-wide v2, v0, v1

    return-void
.end method

.method private c(JJJJJJJ)J
    .locals 9

    xor-long v2, p3, p5

    xor-long v2, v2, p7

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v4, v2

    move-wide/from16 v0, p11

    long-to-int v5, v0

    shl-int/2addr v4, v5

    long-to-int v2, v2

    const-wide/16 v6, 0x20

    sub-long v6, v6, p11

    long-to-int v3, v6

    ushr-int/2addr v2, v3

    or-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v2, p3

    return-wide v2
.end method

.method private d(JJJJJJJ)J
    .locals 9

    const-wide/16 v2, -0x1

    xor-long v2, v2, p7

    or-long/2addr v2, p3

    xor-long/2addr v2, p5

    add-long v2, v2, p9

    add-long v2, v2, p13

    add-long/2addr v2, p1

    long-to-int v4, v2

    move-wide/from16 v0, p11

    long-to-int v5, v0

    shl-int/2addr v4, v5

    long-to-int v2, v2

    const-wide/16 v6, 0x20

    sub-long v6, v6, p11

    long-to-int v3, v6

    ushr-int/2addr v2, v3

    or-int/2addr v2, v4

    int-to-long v2, v2

    add-long/2addr v2, p3

    return-wide v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/asyx/jdsdk/O;->b()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/asyx/jdsdk/O;->a([BI)V

    new-array v2, v6, [B

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->d:[J

    invoke-static {v2, v0, v6}, Lcom/asyx/jdsdk/O;->a([B[JI)V

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->d:[J

    aget-wide v4, v0, v1

    const/4 v0, 0x3

    ushr-long/2addr v4, v0

    long-to-int v0, v4

    and-int/lit8 v0, v0, 0x3f

    const/16 v3, 0x38

    if-ge v0, v3, :cond_0

    rsub-int/lit8 v0, v0, 0x38

    :goto_0
    sget-object v3, Lcom/asyx/jdsdk/O;->b:[B

    invoke-direct {p0, v3, v0}, Lcom/asyx/jdsdk/O;->a([BI)V

    invoke-direct {p0, v2, v6}, Lcom/asyx/jdsdk/O;->a([BI)V

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->g:[B

    iget-object v2, p0, Lcom/asyx/jdsdk/O;->c:[J

    invoke-static {v0, v2, v7}, Lcom/asyx/jdsdk/O;->a([B[JI)V

    const-string v0, ""

    iput-object v0, p0, Lcom/asyx/jdsdk/O;->f:Ljava/lang/String;

    move v0, v1

    :goto_1
    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lcom/asyx/jdsdk/O;->f:Ljava/lang/String;

    return-object v0

    :cond_0
    rsub-int/lit8 v0, v0, 0x78

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/asyx/jdsdk/O;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/asyx/jdsdk/O;->g:[B

    aget-byte v2, v2, v0

    new-array v4, v7, [C

    fill-array-data v4, :array_0

    const/4 v5, 0x2

    new-array v5, v5, [C

    ushr-int/lit8 v6, v2, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v4, v6

    aput-char v6, v5, v1

    const/4 v6, 0x1

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v5, v6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asyx/jdsdk/O;->f:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
