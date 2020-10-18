.class public final enum Lcom/eltechs/axs/xserver/BitGravity;
.super Ljava/lang/Enum;
.source "BitGravity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/BitGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum CENTER:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum EAST:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum FORGET:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum NORTH:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum NORTH_EAST:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum NORTH_WEST:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum SOUTH:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum SOUTH_EAST:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum SOUTH_WEST:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum STATIC:Lcom/eltechs/axs/xserver/BitGravity;

.field public static final enum WEST:Lcom/eltechs/axs/xserver/BitGravity;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "FORGET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->FORGET:Lcom/eltechs/axs/xserver/BitGravity;

    .line 11
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "NORTH_WEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->NORTH_WEST:Lcom/eltechs/axs/xserver/BitGravity;

    .line 12
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "NORTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->NORTH:Lcom/eltechs/axs/xserver/BitGravity;

    .line 13
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "NORTH_EAST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->NORTH_EAST:Lcom/eltechs/axs/xserver/BitGravity;

    .line 14
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "WEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->WEST:Lcom/eltechs/axs/xserver/BitGravity;

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "CENTER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->CENTER:Lcom/eltechs/axs/xserver/BitGravity;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "EAST"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->EAST:Lcom/eltechs/axs/xserver/BitGravity;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "SOUTH_WEST"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->SOUTH_WEST:Lcom/eltechs/axs/xserver/BitGravity;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "SOUTH"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->SOUTH:Lcom/eltechs/axs/xserver/BitGravity;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "SOUTH_EAST"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->SOUTH_EAST:Lcom/eltechs/axs/xserver/BitGravity;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/BitGravity;

    const-string v1, "STATIC"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/eltechs/axs/xserver/BitGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->STATIC:Lcom/eltechs/axs/xserver/BitGravity;

    const/16 v0, 0xb

    .line 8
    new-array v0, v0, [Lcom/eltechs/axs/xserver/BitGravity;

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->FORGET:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->NORTH_WEST:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->NORTH:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->NORTH_EAST:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->WEST:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->CENTER:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v7

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->EAST:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v8

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->SOUTH_WEST:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v9

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->SOUTH:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v10

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->SOUTH_EAST:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v11

    sget-object v1, Lcom/eltechs/axs/xserver/BitGravity;->STATIC:Lcom/eltechs/axs/xserver/BitGravity;

    aput-object v1, v0, v12

    sput-object v0, Lcom/eltechs/axs/xserver/BitGravity;->$VALUES:[Lcom/eltechs/axs/xserver/BitGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/BitGravity;
    .locals 1

    .line 8
    const-class v0, Lcom/eltechs/axs/xserver/BitGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/BitGravity;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/BitGravity;
    .locals 1

    .line 8
    sget-object v0, Lcom/eltechs/axs/xserver/BitGravity;->$VALUES:[Lcom/eltechs/axs/xserver/BitGravity;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/BitGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/BitGravity;

    return-object v0
.end method
