.class public final enum Lorg/apache/commons/compress/archivers/zip/ZipMethod;
.super Ljava/lang/Enum;
.source "ZipMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/zip/ZipMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum AES_ENCRYPTED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_1:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_3:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum EXPANDING_LEVEL_4:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum JPEG:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum LZMA:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum PKWARE_IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum PPMD:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum STORED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum TOKENIZATION:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum UNKNOWN:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field static final UNKNOWN_CODE:I = -0x1

.field public static final enum UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field public static final enum WAVPACK:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

.field private static final codeToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/apache/commons/compress/archivers/zip/ZipMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 39
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "STORED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->STORED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 48
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "UNSHRINKING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 56
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "EXPANDING_LEVEL_1"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_1:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 64
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "EXPANDING_LEVEL_2"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 72
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "EXPANDING_LEVEL_3"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_3:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 80
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "EXPANDING_LEVEL_4"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_4:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 88
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "IMPLODING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 96
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "TOKENIZATION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->TOKENIZATION:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 103
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "DEFLATED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 110
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "ENHANCED_DEFLATED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 117
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "PKWARE_IMPLODING"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->PKWARE_IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 124
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "BZIP2"

    const/16 v13, 0xb

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 132
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "LZMA"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->LZMA:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 140
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "JPEG"

    const/16 v14, 0xd

    const/16 v13, 0x60

    invoke-direct {v0, v1, v14, v13}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->JPEG:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 147
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "WAVPACK"

    const/16 v13, 0x61

    invoke-direct {v0, v1, v15, v13}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->WAVPACK:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 154
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "PPMD"

    const/16 v13, 0xf

    const/16 v15, 0x62

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->PPMD:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 162
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "AES_ENCRYPTED"

    const/16 v13, 0x10

    const/16 v15, 0x63

    invoke-direct {v0, v1, v13, v15}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->AES_ENCRYPTED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 167
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const-string v1, "UNKNOWN"

    const/16 v13, 0x11

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNKNOWN:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const/16 v0, 0x12

    .line 32
    new-array v0, v0, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->STORED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNSHRINKING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_1:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_3:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->EXPANDING_LEVEL_4:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->TOKENIZATION:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->ENHANCED_DEFLATED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->PKWARE_IMPLODING:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->BZIP2:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->LZMA:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->JPEG:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->WAVPACK:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->PPMD:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->AES_ENCRYPTED:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->UNKNOWN:Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    const/16 v3, 0x11

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    invoke-static {}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->values()[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    move-result-object v1

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 178
    invoke-virtual {v4}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->codeToEnum:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 184
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/zip/ZipMethod;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 191
    iput p3, p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->code:I

    return-void
.end method

.method public static getMethodByCode(I)Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 214
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->codeToEnum:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 32
    const-class v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/zip/ZipMethod;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->$VALUES:[Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/zip/ZipMethod;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipMethod;->code:I

    return v0
.end method
