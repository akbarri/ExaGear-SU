.class public final enum Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;
.super Ljava/lang/Enum;
.source "PlayFlags.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;",
        ">;",
        "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

.field public static final enum LOCHARDWARE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

.field public static final enum LOCSOFTWARE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

.field public static final enum LOOPING:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

.field public static final enum TERMINATEBY_DISTANCE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

.field public static final enum TERMINATEBY_PRIORITY:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

.field public static final enum TERMINATEBY_TIME:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const-string v1, "LOOPING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOOPING:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    .line 16
    new-instance v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const-string v1, "LOCHARDWARE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOCHARDWARE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    .line 17
    new-instance v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const-string v1, "LOCSOFTWARE"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v4, v5}, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOCSOFTWARE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    .line 19
    new-instance v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const-string v1, "TERMINATEBY_TIME"

    const/4 v6, 0x3

    const/16 v7, 0x8

    invoke-direct {v0, v1, v6, v7}, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_TIME:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    .line 20
    new-instance v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const-string v1, "TERMINATEBY_DISTANCE"

    const/16 v7, 0x10

    invoke-direct {v0, v1, v5, v7}, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_DISTANCE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    .line 21
    new-instance v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const-string v1, "TERMINATEBY_PRIORITY"

    const/4 v7, 0x5

    const/16 v8, 0x20

    invoke-direct {v0, v1, v7, v8}, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_PRIORITY:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const/4 v0, 0x6

    .line 12
    new-array v0, v0, [Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOOPING:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOCHARDWARE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOCSOFTWARE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_TIME:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_DISTANCE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_PRIORITY:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    aput-object v1, v0, v7

    sput-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->$VALUES:[Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;
    .locals 1

    .line 12
    const-class v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;
    .locals 1

    .line 12
    sget-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->$VALUES:[Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    invoke-virtual {v0}, [Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    return-object v0
.end method


# virtual methods
.method public flagValue()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->value:I

    return v0
.end method
