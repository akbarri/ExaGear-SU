.class public final enum Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;
.super Ljava/lang/Enum;
.source "PointerWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/events/PointerWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

.field public static final enum GRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

.field public static final enum NORMAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

.field public static final enum UNGRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 132
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->NORMAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    .line 133
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    const-string v1, "GRAB"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->GRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    .line 134
    new-instance v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    const-string v1, "UNGRAB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->UNGRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    const/4 v0, 0x3

    .line 130
    new-array v0, v0, [Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->NORMAL:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->GRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->UNGRAB:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->$VALUES:[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;
    .locals 1

    .line 130
    const-class v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;
    .locals 1

    .line 130
    sget-object v0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->$VALUES:[Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    invoke-virtual {v0}, [Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    return-object v0
.end method
