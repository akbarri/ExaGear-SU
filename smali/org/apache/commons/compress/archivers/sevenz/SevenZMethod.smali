.class public final enum Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
.super Ljava/lang/Enum;
.source "SevenZMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field public static final enum LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;


# instance fields
.field private final id:[B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 38
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "COPY"

    const/4 v2, 0x1

    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v3, v4

    invoke-direct {v0, v1, v4, v3}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 40
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "LZMA"

    const/4 v3, 0x3

    new-array v5, v3, [B

    fill-array-data v5, :array_0

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 42
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "LZMA2"

    new-array v5, v2, [B

    const/16 v6, 0x21

    aput-byte v6, v5, v4

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 44
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "DEFLATE"

    new-array v5, v3, [B

    fill-array-data v5, :array_1

    invoke-direct {v0, v1, v3, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 46
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "BZIP2"

    new-array v5, v3, [B

    fill-array-data v5, :array_2

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 51
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "AES256SHA256"

    new-array v5, v7, [B

    fill-array-data v5, :array_3

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 56
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "BCJ_X86_FILTER"

    new-array v5, v7, [B

    fill-array-data v5, :array_4

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 61
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "BCJ_PPC_FILTER"

    new-array v5, v7, [B

    fill-array-data v5, :array_5

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 66
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "BCJ_IA64_FILTER"

    new-array v5, v7, [B

    fill-array-data v5, :array_6

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 71
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "BCJ_ARM_FILTER"

    new-array v5, v7, [B

    fill-array-data v5, :array_7

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 76
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "BCJ_ARM_THUMB_FILTER"

    new-array v5, v7, [B

    fill-array-data v5, :array_8

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 81
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "BCJ_SPARC_FILTER"

    new-array v5, v7, [B

    fill-array-data v5, :array_9

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 86
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const-string v1, "DELTA_FILTER"

    new-array v5, v2, [B

    aput-byte v3, v5, v4

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v5}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const/16 v0, 0xd

    .line 36
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->COPY:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->LZMA2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DEFLATE:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BZIP2:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->AES256SHA256:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_X86_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_PPC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_IA64_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_ARM_THUMB_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v13

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->BCJ_SPARC_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->DELTA_FILTER:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    aput-object v1, v0, v15

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-void

    :array_0
    .array-data 1
        0x3t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x1t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x4t
        0x2t
        0x2t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        -0xft
        0x7t
        0x1t
    .end array-data

    :array_4
    .array-data 1
        0x3t
        0x3t
        0x1t
        0x3t
    .end array-data

    :array_5
    .array-data 1
        0x3t
        0x3t
        0x2t
        0x5t
    .end array-data

    :array_6
    .array-data 1
        0x3t
        0x3t
        0x4t
        0x1t
    .end array-data

    :array_7
    .array-data 1
        0x3t
        0x3t
        0x5t
        0x1t
    .end array-data

    :array_8
    .array-data 1
        0x3t
        0x3t
        0x7t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x3t
        0x3t
        0x8t
        0x5t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    return-void
.end method

.method static byId([B)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 5

    .line 101
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 102
    iget-object v4, v3, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    invoke-static {v4, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 1

    .line 36
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 1

    .line 36
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-object v0
.end method


# virtual methods
.method getId()[B
    .locals 4

    .line 95
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    const/4 v1, 0x0

    array-length v0, v0

    new-array v0, v0, [B

    .line 96
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;->id:[B

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
