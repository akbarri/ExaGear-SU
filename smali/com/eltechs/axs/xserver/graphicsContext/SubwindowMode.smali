.class public final enum Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;
.super Ljava/lang/Enum;
.source "SubwindowMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

.field public static final enum CLIP_BY_CHILDREN:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

.field public static final enum INCLUDE_INFERIORS:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    const-string v1, "CLIP_BY_CHILDREN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->CLIP_BY_CHILDREN:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    const-string v1, "INCLUDE_INFERIORS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->INCLUDE_INFERIORS:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->CLIP_BY_CHILDREN:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->INCLUDE_INFERIORS:Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;

    return-object v0
.end method
