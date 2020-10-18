.class public final enum Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;
.super Ljava/lang/Enum;
.source "JoinStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

.field public static final enum BEVEL:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

.field public static final enum MITER:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

.field public static final enum ROUND:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    const-string v1, "MITER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->MITER:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    const-string v1, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->ROUND:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    const-string v1, "BEVEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->BEVEL:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->MITER:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->ROUND:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->BEVEL:Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;

    return-object v0
.end method
