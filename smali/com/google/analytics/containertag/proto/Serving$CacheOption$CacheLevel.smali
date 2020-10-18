.class public final enum Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
.super Ljava/lang/Enum;
.source "Serving.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$CacheOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;",
        ">;",
        "Lcom/google/tagmanager/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

.field public static final enum NO_CACHE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

.field public static final NO_CACHE_VALUE:I = 0x1

.field public static final enum PRIVATE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

.field public static final PRIVATE_VALUE:I = 0x2

.field public static final enum PUBLIC:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

.field public static final PUBLIC_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5642
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    const-string v1, "NO_CACHE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    .line 5646
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    const-string v1, "PRIVATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->PRIVATE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    .line 5650
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    const-string v1, "PUBLIC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->PUBLIC:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    .line 5637
    new-array v0, v5, [Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->PRIVATE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->PUBLIC:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->$VALUES:[Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    .line 5683
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel$1;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel$1;-><init>()V

    sput-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->internalValueMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 5692
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5693
    iput p4, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;",
            ">;"
        }
    .end annotation

    .line 5680
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->internalValueMap:Lcom/google/tagmanager/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 5673
    :pswitch_0
    sget-object p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->PUBLIC:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object p0

    .line 5672
    :pswitch_1
    sget-object p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->PRIVATE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object p0

    .line 5671
    :pswitch_2
    sget-object p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 1

    .line 5637
    const-class v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object p0
.end method

.method public static values()[Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;
    .locals 1

    .line 5637
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->$VALUES:[Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    invoke-virtual {v0}, [Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 5667
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$CacheOption$CacheLevel;->value:I

    return v0
.end method
