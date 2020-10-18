.class public final Lcom/google/android/gms/internal/zzbfo;
.super Ljava/lang/Object;


# direct methods
.method private static zza(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    return-wide p0
.end method

.method private static zza([BII)J
    .locals 27

    move-object/from16 v7, p0

    const/4 v0, 0x2

    new-array v8, v0, [J

    new-array v9, v0, [J

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v0

    const-wide v2, 0x1529cba0ca458ffL

    add-long/2addr v2, v0

    const/4 v11, 0x1

    add-int/lit8 v0, p2, -0x1

    div-int/lit8 v1, v0, 0x40

    shl-int/lit8 v1, v1, 0x6

    add-int v12, v10, v1

    and-int/lit8 v13, v0, 0x3f

    add-int v0, v12, v13

    add-int/lit8 v14, v0, -0x3f

    const-wide v0, 0x226bb95b4e64b6d4L    # 7.104748899679321E-143

    const-wide v4, 0x134a747f856d0526L    # 9.592726139023731E-216

    move/from16 v15, p1

    :goto_0
    add-long/2addr v2, v0

    aget-wide v16, v8, v10

    add-long v2, v2, v16

    add-int/lit8 v6, v15, 0x8

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v16

    add-long v2, v2, v16

    const/16 v6, 0x25

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    const-wide v16, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v2, v2, v16

    aget-wide v18, v8, v11

    add-long v0, v0, v18

    add-int/lit8 v6, v15, 0x30

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v18

    add-long v0, v0, v18

    const/16 v6, 0x2a

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v0, v0, v16

    aget-wide v18, v9, v11

    xor-long v18, v2, v18

    aget-wide v2, v8, v10

    add-int/lit8 v6, v15, 0x28

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v22

    add-long v2, v2, v22

    add-long v22, v0, v2

    aget-wide v0, v9, v10

    add-long/2addr v4, v0

    const/16 v6, 0x21

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v24, v0, v16

    aget-wide v0, v8, v11

    mul-long v2, v0, v16

    aget-wide v0, v9, v10

    add-long v4, v18, v0

    move-object v0, v7

    move v1, v15

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbfo;->zza([BIJJ[J)V

    add-int/lit8 v1, v15, 0x20

    aget-wide v2, v9, v11

    add-long v2, v24, v2

    add-int/lit8 v0, v15, 0x10

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v4

    add-long v4, v22, v4

    move-object v0, v7

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbfo;->zza([BIJJ[J)V

    add-int/lit8 v15, v15, 0x40

    if-ne v15, v12, :cond_0

    const-wide/16 v0, 0xff

    and-long v0, v18, v0

    shl-long/2addr v0, v11

    add-long v15, v16, v0

    aget-wide v0, v9, v10

    int-to-long v2, v13

    add-long/2addr v0, v2

    aput-wide v0, v9, v10

    aget-wide v0, v8, v10

    aget-wide v2, v9, v10

    add-long/2addr v0, v2

    aput-wide v0, v8, v10

    aget-wide v0, v9, v10

    aget-wide v2, v8, v10

    add-long/2addr v0, v2

    aput-wide v0, v9, v10

    add-long v24, v24, v22

    aget-wide v0, v8, v10

    add-long v24, v24, v0

    add-int/lit8 v0, v14, 0x8

    invoke-static {v7, v0}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v0

    add-long v0, v24, v0

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v15

    aget-wide v2, v8, v11

    add-long v22, v22, v2

    add-int/lit8 v2, v14, 0x30

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v2

    add-long v2, v22, v2

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long/2addr v2, v15

    aget-wide v4, v9, v11

    const-wide/16 v12, 0x9

    mul-long/2addr v4, v12

    xor-long v20, v0, v4

    aget-wide v0, v8, v10

    mul-long/2addr v0, v12

    add-int/lit8 v4, v14, 0x28

    invoke-static {v7, v4}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long v12, v2, v0

    aget-wide v0, v9, v10

    add-long v0, v18, v0

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v17, v0, v15

    aget-wide v0, v8, v11

    mul-long v2, v0, v15

    aget-wide v0, v9, v10

    add-long v4, v20, v0

    move-object v0, v7

    move v1, v14

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbfo;->zza([BIJJ[J)V

    add-int/lit8 v1, v14, 0x20

    aget-wide v2, v9, v11

    add-long v2, v17, v2

    add-int/lit8 v14, v14, 0x10

    invoke-static {v7, v14}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v4

    add-long/2addr v4, v12

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbfo;->zza([BIJJ[J)V

    aget-wide v2, v8, v10

    aget-wide v4, v9, v10

    move-wide v6, v15

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v0

    const/16 v2, 0x2f

    ushr-long v2, v12, v2

    xor-long/2addr v2, v12

    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v0, v0, v20

    aget-wide v2, v8, v11

    aget-wide v4, v9, v11

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v2

    add-long v4, v2, v17

    move-wide v2, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move-wide/from16 v4, v18

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    goto/16 :goto_0
.end method

.method private static zza([BIJJ[J)V
    .locals 6

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v4

    add-int/lit8 p1, p1, 0x18

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide p0

    add-long/2addr p2, v0

    add-long/2addr p4, p2

    add-long/2addr p4, p0

    const/16 v0, 0x15

    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    add-long/2addr v2, p2

    add-long/2addr v2, v4

    const/16 v0, 0x2c

    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr p4, v0

    add-long/2addr v2, p0

    const/4 p0, 0x0

    aput-wide v2, p6, p0

    add-long/2addr p4, p2

    const/4 p0, 0x1

    aput-wide p4, p6, p0

    return-void
.end method

.method private static zzb([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static zzc([BI)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method

.method public static zzi([B)J
    .locals 22

    move-object/from16 v0, p0

    array-length v1, v0

    if-ltz v1, :cond_7

    array-length v2, v0

    if-le v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x12

    const/16 v4, 0x1e

    const/16 v5, 0x2b

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-wide v9, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    if-gt v1, v2, :cond_5

    if-gt v1, v6, :cond_4

    if-lt v1, v7, :cond_1

    shl-int/lit8 v2, v1, 0x1

    int-to-long v2, v2

    add-long v15, v9, v2

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v2

    add-long/2addr v2, v9

    add-int/2addr v1, v8

    sub-int/2addr v1, v7

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v0

    const/16 v4, 0x25

    invoke-static {v0, v1, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    mul-long/2addr v4, v15

    add-long v11, v4, v2

    const/16 v4, 0x19

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v2, v0

    mul-long v13, v2, v15

    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    shl-int/lit8 v3, v1, 0x1

    int-to-long v3, v3

    add-long v15, v9, v3

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzbfo;->zzb([BI)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    int-to-long v9, v1

    const/4 v7, 0x3

    shl-long/2addr v3, v7

    add-long v11, v9, v3

    add-int/2addr v1, v8

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbfo;->zzb([BI)I

    move-result v0

    int-to-long v0, v0

    and-long v13, v0, v5

    invoke-static/range {v11 .. v16}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    if-lez v1, :cond_3

    aget-byte v2, v0, v8

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v8

    aget-byte v3, v0, v3

    add-int/lit8 v4, v1, -0x1

    add-int/2addr v8, v4

    aget-byte v0, v0, v8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v7

    add-int/2addr v2, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    int-to-long v2, v2

    mul-long/2addr v2, v9

    int-to-long v0, v1

    const-wide v4, -0x3c5a37a36834ced9L    # -7.8480313857871552E17

    mul-long/2addr v0, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x2f

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    mul-long/2addr v0, v9

    return-wide v0

    :cond_3
    return-wide v9

    :cond_4
    shl-int/lit8 v2, v1, 0x1

    int-to-long v11, v2

    add-long v17, v9, v11

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v11

    const-wide v13, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long/2addr v11, v13

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v13

    add-int/2addr v1, v8

    add-int/lit8 v2, v1, -0x8

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v7

    mul-long v7, v7, v17

    sub-int/2addr v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v0

    mul-long/2addr v0, v9

    add-long v9, v11, v13

    invoke-static {v9, v10, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    invoke-static {v7, v8, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v9

    add-long/2addr v5, v9

    add-long/2addr v0, v5

    const-wide v4, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v13, v4

    invoke-static {v13, v14, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v11, v2

    add-long v15, v11, v7

    move-wide v13, v0

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_5
    const/16 v2, 0x40

    if-gt v1, v2, :cond_6

    shl-int/lit8 v2, v1, 0x1

    int-to-long v9, v2

    const-wide v11, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v9, v11

    invoke-static {v0, v8}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v13

    mul-long v19, v13, v11

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v13

    add-int/2addr v1, v8

    add-int/lit8 v2, v1, -0x8

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v7

    mul-long/2addr v7, v9

    add-int/lit8 v2, v1, -0x10

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v15

    mul-long/2addr v15, v11

    add-long v11, v19, v13

    invoke-static {v11, v12, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v11

    invoke-static {v7, v8, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v17

    add-long v11, v11, v17

    add-long/2addr v11, v15

    const-wide v15, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v13, v15

    invoke-static {v13, v14, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v13

    add-long v13, v19, v13

    add-long v15, v13, v7

    move-wide v13, v11

    move-wide/from16 v17, v9

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v7

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v13

    mul-long/2addr v13, v9

    const/16 v2, 0x18

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v15

    add-int/lit8 v6, v1, -0x20

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v17

    add-long v11, v11, v17

    mul-long/2addr v11, v9

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbfo;->zzc([BI)J

    move-result-wide v0

    add-long/2addr v7, v0

    mul-long/2addr v7, v9

    add-long v0, v13, v15

    invoke-static {v0, v1, v5}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    invoke-static {v11, v12, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long/2addr v0, v7

    add-long v4, v15, v19

    invoke-static {v4, v5, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v13, v2

    add-long v15, v13, v11

    move-wide v13, v0

    move-wide/from16 v17, v9

    invoke-static/range {v13 .. v18}, Lcom/google/android/gms/internal/zzbfo;->zza(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_6
    invoke-static {v0, v8, v1}, Lcom/google/android/gms/internal/zzbfo;->zza([BII)J

    move-result-wide v0

    return-wide v0

    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/16 v2, 0x43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Out of bound index with offput: 0 and length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
