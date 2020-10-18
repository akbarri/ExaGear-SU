.class final enum Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;
.super Ljava/lang/Enum;
.source "LZMAUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/lzma/LZMAUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CachedAvailability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

.field public static final enum CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

.field public static final enum CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

.field public static final enum DONT_CACHE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    const-string v1, "DONT_CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    const-string v1, "CACHED_AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    new-instance v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    const-string v1, "CACHED_UNAVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    const/4 v0, 0x3

    .line 41
    new-array v0, v0, [Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    sget-object v1, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->DONT_CACHE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->CACHED_AVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->CACHED_UNAVAILABLE:Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->$VALUES:[Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;
    .locals 1

    .line 41
    const-class v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->$VALUES:[Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/compressors/lzma/LZMAUtils$CachedAvailability;

    return-object v0
.end method
