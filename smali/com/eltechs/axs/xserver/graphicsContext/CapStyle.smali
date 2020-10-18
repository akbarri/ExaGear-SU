.class public final enum Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;
.super Ljava/lang/Enum;
.source "CapStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

.field public static final enum BUTT:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

.field public static final enum NOT_LAST:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

.field public static final enum PROJECTING:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

.field public static final enum ROUND:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    const-string v1, "NOT_LAST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->NOT_LAST:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    const-string v1, "BUTT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->BUTT:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    const-string v1, "ROUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->ROUND:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    const-string v1, "PROJECTING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->PROJECTING:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    const/4 v0, 0x4

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->NOT_LAST:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->BUTT:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->ROUND:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->PROJECTING:Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/graphicsContext/CapStyle;

    return-object v0
.end method
