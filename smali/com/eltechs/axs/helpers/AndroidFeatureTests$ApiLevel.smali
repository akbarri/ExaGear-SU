.class public final enum Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;
.super Ljava/lang/Enum;
.source "AndroidFeatureTests.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/helpers/AndroidFeatureTests;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApiLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

.field public static final enum ANDROID_2_3_3:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

.field public static final enum ANDROID_3_0:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

.field public static final enum ANDROID_4_0:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

.field public static final enum ANDROID_4_4:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;


# instance fields
.field private final numericLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    const-string v1, "ANDROID_4_4"

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_4_4:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    .line 24
    new-instance v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    const-string v1, "ANDROID_4_0"

    const/4 v3, 0x1

    const/16 v4, 0xe

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_4_0:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    .line 25
    new-instance v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    const-string v1, "ANDROID_3_0"

    const/4 v4, 0x2

    const/16 v5, 0xb

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_3_0:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    .line 26
    new-instance v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    const-string v1, "ANDROID_2_3_3"

    const/4 v5, 0x3

    const/16 v6, 0xa

    invoke-direct {v0, v1, v5, v6}, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_2_3_3:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    const/4 v0, 0x4

    .line 21
    new-array v0, v0, [Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    sget-object v1, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_4_4:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_4_0:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_3_0:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->ANDROID_2_3_3:Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->$VALUES:[Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->numericLevel:I

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->numericLevel:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;
    .locals 1

    .line 21
    const-class v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;
    .locals 1

    .line 21
    sget-object v0, Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->$VALUES:[Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    invoke-virtual {v0}, [Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/helpers/AndroidFeatureTests$ApiLevel;

    return-object v0
.end method
