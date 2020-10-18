.class public Lcom/eltechs/axs/helpers/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/helpers/Base64$DecoderException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALPHABET:[B

.field private static final DECODABET:[B

.field public static final DECODE:Z = false

.field public static final ENCODE:Z = true

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final NEW_LINE:B = 0xat

.field private static final WEBSAFE_ALPHABET:[B

.field private static final WEBSAFE_DECODABET:[B

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x40

    .line 57
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/eltechs/axs/helpers/Base64;->ALPHABET:[B

    .line 75
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/eltechs/axs/helpers/Base64;->WEBSAFE_ALPHABET:[B

    const/16 v0, 0x80

    .line 94
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/eltechs/axs/helpers/Base64;->DECODABET:[B

    .line 128
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/eltechs/axs/helpers/Base64;->WEBSAFE_DECODABET:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_2
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/Base64$DecoderException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 420
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/helpers/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/Base64$DecoderException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 445
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/helpers/Base64;->decode([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/Base64$DecoderException;
        }
    .end annotation

    .line 474
    sget-object v0, Lcom/eltechs/axs/helpers/Base64;->DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/eltechs/axs/helpers/Base64;->decode([BII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BII[B)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/Base64$DecoderException;
        }
    .end annotation

    move/from16 v2, p2

    move-object/from16 v3, p3

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x4

    .line 504
    div-int/2addr v4, v5

    const/4 v6, 0x2

    add-int/2addr v4, v6

    .line 505
    new-array v4, v4, [B

    .line 508
    new-array v7, v5, [B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x3d

    const/4 v13, 0x1

    if-ge v9, v2, :cond_9

    add-int v14, v9, p1

    .line 514
    aget-byte v15, p0, v14

    and-int/lit8 v15, v15, 0x7f

    int-to-byte v15, v15

    .line 515
    aget-byte v8, v3, v15

    const/4 v5, -0x5

    if-lt v8, v5, :cond_8

    const/4 v5, -0x1

    if-lt v8, v5, :cond_7

    if-ne v15, v12, :cond_5

    sub-int v5, v2, v9

    add-int/lit8 v8, v2, -0x1

    add-int v8, v8, p1

    .line 523
    aget-byte v0, p0, v8

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    if-eqz v10, :cond_4

    if-ne v10, v13, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    if-ne v10, v1, :cond_1

    if-gt v5, v6, :cond_2

    :cond_1
    const/4 v1, 0x4

    if-ne v10, v1, :cond_3

    if-le v5, v13, :cond_3

    .line 529
    :cond_2
    new-instance v0, Lcom/eltechs/axs/helpers/Base64$DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "padding byte \'=\' falsely signals end of encoded value at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/helpers/Base64$DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eq v0, v12, :cond_9

    const/16 v1, 0xa

    if-eq v0, v1, :cond_9

    .line 533
    new-instance v0, Lcom/eltechs/axs/helpers/Base64$DecoderException;

    const-string v1, "encoded value has invalid trailing byte"

    invoke-direct {v0, v1}, Lcom/eltechs/axs/helpers/Base64$DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_4
    :goto_1
    new-instance v0, Lcom/eltechs/axs/helpers/Base64$DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid padding byte \'=\' at byte offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/helpers/Base64$DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v5, v10, 0x1

    .line 539
    aput-byte v15, v7, v10

    const/4 v8, 0x4

    if-ne v5, v8, :cond_6

    const/4 v10, 0x0

    .line 541
    invoke-static {v7, v10, v4, v11, v3}, Lcom/eltechs/axs/helpers/Base64;->decode4to3([BI[BI[B)I

    move-result v5

    add-int/2addr v11, v5

    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    move v10, v5

    goto :goto_2

    :cond_7
    const/4 v8, 0x4

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v5, v8

    goto/16 :goto_0

    .line 546
    :cond_8
    new-instance v1, Lcom/eltechs/axs/helpers/Base64$DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad Base64 input character at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, p0, v14

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(decimal)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/eltechs/axs/helpers/Base64$DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eqz v10, :cond_b

    if-ne v10, v13, :cond_a

    .line 559
    new-instance v0, Lcom/eltechs/axs/helpers/Base64$DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "single trailing character at offset "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/helpers/Base64$DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_a
    aput-byte v12, v7, v10

    const/4 v0, 0x0

    .line 563
    invoke-static {v7, v0, v4, v11, v3}, Lcom/eltechs/axs/helpers/Base64;->decode4to3([BI[BI[B)I

    move-result v1

    add-int/2addr v11, v1

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    .line 566
    :goto_3
    new-array v1, v11, [B

    .line 567
    invoke-static {v4, v0, v1, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static decode4to3([BI[BI[B)I
    .locals 6

    add-int/lit8 v0, p1, 0x2

    .line 378
    aget-byte v1, p0, v0

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 379
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x6

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 383
    aput-byte p0, p2, p3

    return v3

    :cond_0
    add-int/lit8 v1, p1, 0x3

    .line 385
    aget-byte v4, p0, v1

    const/4 v5, 0x2

    if-ne v4, v2, :cond_1

    .line 387
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v1

    aget-byte p0, p0, v0

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x12

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 392
    aput-byte p1, p2, p3

    add-int/2addr p3, v3

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 393
    aput-byte p0, p2, p3

    return v5

    .line 397
    :cond_1
    aget-byte v2, p0, p1

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x6

    add-int/2addr p1, v3

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v2

    aget-byte v0, p0, v0

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x12

    or-int/2addr p1, v0

    aget-byte p0, p0, v1

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 403
    aput-byte p1, p2, p3

    add-int/lit8 p1, p3, 0x1

    shr-int/lit8 p4, p0, 0x8

    int-to-byte p4, p4

    .line 404
    aput-byte p4, p2, p1

    add-int/2addr p3, v5

    int-to-byte p0, p0

    .line 405
    aput-byte p0, p2, p3

    const/4 p0, 0x3

    return p0
.end method

.method public static decodeWebSafe(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/Base64$DecoderException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    .line 432
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/helpers/Base64;->decodeWebSafe([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeWebSafe([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/Base64$DecoderException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 458
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/eltechs/axs/helpers/Base64;->decodeWebSafe([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeWebSafe([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/helpers/Base64$DecoderException;
        }
    .end annotation

    .line 489
    sget-object v0, Lcom/eltechs/axs/helpers/Base64;->WEBSAFE_DECODABET:[B

    invoke-static {p0, p1, p2, v0}, Lcom/eltechs/axs/helpers/Base64;->decode([BII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 247
    array-length v2, p0

    sget-object v3, Lcom/eltechs/axs/helpers/Base64;->ALPHABET:[B

    invoke-static {p0, v0, v2, v3, v1}, Lcom/eltechs/axs/helpers/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encode([BII[BZ)Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    .line 274
    invoke-static {p0, p1, p2, p3, v0}, Lcom/eltechs/axs/helpers/Base64;->encode([BII[BI)[B

    move-result-object p0

    .line 275
    array-length p1, p0

    :goto_0
    if-nez p4, :cond_1

    if-lez p1, :cond_1

    add-int/lit8 p2, p1, -0x1

    .line 280
    aget-byte p2, p0, p2

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 286
    :cond_1
    :goto_1
    new-instance p2, Ljava/lang/String;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p1}, Ljava/lang/String;-><init>([BII)V

    return-object p2
.end method

.method public static encode([BII[BI)[B
    .locals 11

    add-int/lit8 v0, p2, 0x2

    .line 301
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 303
    div-int v1, v0, p4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x0

    move v3, v2

    move v7, v3

    move v8, v7

    :goto_0
    const/16 v9, 0xa

    if-ge v3, v1, :cond_1

    add-int v4, v3, p1

    .line 315
    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    ushr-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v3, 0x1

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    aget-byte v5, p0, v5

    shl-int/lit8 v5, v5, 0x18

    ushr-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x12

    .line 319
    aget-byte v5, p3, v5

    aput-byte v5, v0, v7

    add-int/lit8 v5, v7, 0x1

    ushr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    .line 320
    aget-byte v6, p3, v6

    aput-byte v6, v0, v5

    add-int/lit8 v6, v7, 0x2

    ushr-int/lit8 v10, v4, 0x6

    and-int/lit8 v10, v10, 0x3f

    .line 321
    aget-byte v10, p3, v10

    aput-byte v10, v0, v6

    add-int/lit8 v6, v7, 0x3

    and-int/lit8 v4, v4, 0x3f

    .line 322
    aget-byte v4, p3, v4

    aput-byte v4, v0, v6

    add-int/lit8 v8, v8, 0x4

    if-ne v8, p4, :cond_0

    add-int/lit8 v7, v7, 0x4

    .line 326
    aput-byte v9, v0, v7

    move v8, v2

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v7, v5, 0x4

    goto :goto_0

    :cond_1
    if-ge v3, p2, :cond_2

    add-int v2, v3, p1

    sub-int v3, p2, v3

    move-object v1, p0

    move-object v4, v0

    move v5, v7

    move-object v6, p3

    .line 333
    invoke-static/range {v1 .. v6}, Lcom/eltechs/axs/helpers/Base64;->encode3to4([BII[BI[B)[B

    add-int/lit8 v8, v8, 0x4

    if-ne v8, p4, :cond_2

    add-int/lit8 v7, v7, 0x4

    .line 338
    aput-byte v9, v0, v7

    :cond_2
    return-object v0
.end method

.method private static encode3to4([BII[BI[B)[B
    .locals 3

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 209
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    or-int/2addr v1, v2

    const/4 v2, 0x2

    if-le p2, v2, :cond_2

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_2
    or-int p0, v1, v0

    const/16 p1, 0x3d

    packed-switch p2, :pswitch_data_0

    return-object p3

    :pswitch_0
    ushr-int/lit8 p1, p0, 0x12

    .line 216
    aget-byte p1, p5, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    .line 217
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    .line 218
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/lit8 p4, p4, 0x3

    and-int/lit8 p0, p0, 0x3f

    .line 219
    aget-byte p0, p5, p0

    aput-byte p0, p3, p4

    return-object p3

    :pswitch_1
    ushr-int/lit8 p2, p0, 0x12

    .line 222
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0x3f

    .line 223
    aget-byte v0, p5, v0

    aput-byte v0, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 224
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/lit8 p4, p4, 0x3

    .line 225
    aput-byte p1, p3, p4

    return-object p3

    :pswitch_2
    ushr-int/lit8 p2, p0, 0x12

    .line 228
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 229
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    .line 230
    aput-byte p1, p3, p0

    add-int/lit8 p4, p4, 0x3

    .line 231
    aput-byte p1, p3, p4

    return-object p3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeWebSafe([BZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 258
    array-length v1, p0

    sget-object v2, Lcom/eltechs/axs/helpers/Base64;->WEBSAFE_ALPHABET:[B

    invoke-static {p0, v0, v1, v2, p1}, Lcom/eltechs/axs/helpers/Base64;->encode([BII[BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
