.class public final enum Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;
.super Ljava/lang/Enum;
.source "GestureMouseMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MouseModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

.field public static final enum MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

.field public static final enum MOUSE_MODE_RIGHT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    const-string v1, "MOUSE_MODE_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    .line 15
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    const-string v1, "MOUSE_MODE_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_LEFT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->MOUSE_MODE_RIGHT:Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->$VALUES:[Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;
    .locals 1

    .line 12
    const-class v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;
    .locals 1

    .line 12
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->$VALUES:[Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    invoke-virtual {v0}, [Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/GestureStateMachine/GestureMouseMode$MouseModeState;

    return-object v0
.end method
