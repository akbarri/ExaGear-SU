.class public final enum Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;
.super Ljava/lang/Enum;
.source "VisualClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

.field public static final enum DIRECT_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

.field public static final enum GRAY_SCALE:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

.field public static final enum PSEUDO_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

.field public static final enum STATIC_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

.field public static final enum STATIC_GRAY:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

.field public static final enum TRUE_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    const-string v1, "STATIC_GRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->STATIC_GRAY:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    .line 16
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    const-string v1, "GRAY_SCALE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->GRAY_SCALE:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    .line 17
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    const-string v1, "STATIC_COLOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->STATIC_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    .line 18
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    const-string v1, "PSEUDO_COLOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->PSEUDO_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    const-string v1, "TRUE_COLOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->TRUE_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    .line 20
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    const-string v1, "DIRECT_COLOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->DIRECT_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->STATIC_GRAY:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->GRAY_SCALE:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->STATIC_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->PSEUDO_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->TRUE_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    aput-object v1, v0, v6

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->DIRECT_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    aput-object v1, v0, v7

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->$VALUES:[Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

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

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;
    .locals 1

    .line 13
    const-class v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;
    .locals 1

    .line 13
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->$VALUES:[Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    return-object v0
.end method
