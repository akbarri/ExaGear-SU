.class public final enum Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;
.super Ljava/lang/Enum;
.source "PointerWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/events/PointerWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

.field public static final enum ANCESTOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

.field public static final enum INFERIOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

.field public static final enum NONLINEAR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

.field public static final enum NONLINEAR_VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

.field public static final enum VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 123
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "ANCESTOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 124
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "VIRTUAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 125
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "INFERIOR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 126
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "NONLINEAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 127
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    const-string v1, "NONLINEAR_VIRTUAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    const/4 v0, 0x5

    .line 121
    new-array v0, v0, [Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->ANCESTOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->INFERIOR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->NONLINEAR_VIRTUAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    aput-object v1, v0, v6

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->$VALUES:[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;
    .locals 1

    .line 121
    const-class v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;
    .locals 1

    .line 121
    sget-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->$VALUES:[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    return-object v0
.end method
