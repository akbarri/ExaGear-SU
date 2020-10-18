.class public final enum Lcom/eltechs/axs/xserver/graphicsContext/FillRule;
.super Ljava/lang/Enum;
.source "FillRule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/graphicsContext/FillRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

.field public static final enum EVEN_ODD:Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

.field public static final enum WINDING:Lcom/eltechs/axs/xserver/graphicsContext/FillRule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    const-string v1, "EVEN_ODD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;->EVEN_ODD:Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    const-string v1, "WINDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;->WINDING:Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    const/4 v0, 0x2

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;->EVEN_ODD:Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;->WINDING:Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

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

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/graphicsContext/FillRule;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/graphicsContext/FillRule;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/xserver/graphicsContext/FillRule;->$VALUES:[Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/graphicsContext/FillRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/graphicsContext/FillRule;

    return-object v0
.end method
