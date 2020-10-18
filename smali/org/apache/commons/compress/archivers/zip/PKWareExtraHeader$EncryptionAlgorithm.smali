.class public final enum Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
.super Ljava/lang/Enum;
.source "PKWareExtraHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum AES128:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum AES192:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum AES256:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum DES:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum RC2:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum RC2pre52:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum RC4:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum TripleDES168:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum TripleDES192:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field public static final enum UNKNOWN:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

.field private static final codeToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 203
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "DES"

    const/4 v2, 0x0

    const/16 v3, 0x6601

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->DES:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 204
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "RC2pre52"

    const/4 v3, 0x1

    const/16 v4, 0x6602

    invoke-direct {v0, v1, v3, v4}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->RC2pre52:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 205
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "TripleDES168"

    const/4 v4, 0x2

    const/16 v5, 0x6603

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->TripleDES168:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 206
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "TripleDES192"

    const/4 v5, 0x3

    const/16 v6, 0x6609

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->TripleDES192:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 207
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "AES128"

    const/4 v6, 0x4

    const/16 v7, 0x660e

    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->AES128:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 208
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "AES192"

    const/4 v7, 0x5

    const/16 v8, 0x660f

    invoke-direct {v0, v1, v7, v8}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->AES192:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 209
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "AES256"

    const/4 v8, 0x6

    const/16 v9, 0x6610

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->AES256:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 210
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "RC2"

    const/4 v9, 0x7

    const/16 v10, 0x6702

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->RC2:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 211
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "RC4"

    const/16 v10, 0x8

    const/16 v11, 0x6801

    invoke-direct {v0, v1, v10, v11}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->RC4:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 212
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const-string v1, "UNKNOWN"

    const/16 v11, 0x9

    const v12, 0xffff

    invoke-direct {v0, v1, v11, v12}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->UNKNOWN:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    const/16 v0, 0xa

    .line 202
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->DES:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->RC2pre52:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->TripleDES168:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->TripleDES192:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->AES128:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->AES192:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->AES256:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->RC2:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->RC4:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->UNKNOWN:Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    aput-object v1, v0, v11

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 220
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->values()[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 221
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->codeToEnum:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 230
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->code:I

    return-void
.end method

.method public static getAlgorithmByCode(I)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    .line 250
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->codeToEnum:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    .line 202
    const-class v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;
    .locals 1

    .line 202
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/PKWareExtraHeader$EncryptionAlgorithm;->code:I

    return v0
.end method
