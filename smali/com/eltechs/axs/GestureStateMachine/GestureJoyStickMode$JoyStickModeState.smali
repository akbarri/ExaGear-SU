.class public final enum Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;
.super Ljava/lang/Enum;
.source "GestureJoyStickMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JoyStickModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

.field public static final enum JOYSTICK_MODE_OFF:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

.field public static final enum JOYSTICK_MODE_ON:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    const/4 v1, 0x0

    const-string v2, "JOYSTICK_MODE_ON"

    invoke-direct {v0, v2, v1}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_ON:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    .line 44
    new-instance v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    const/4 v2, 0x1

    const-string v3, "JOYSTICK_MODE_OFF"

    invoke-direct {v0, v3, v2}, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_OFF:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    sget-object v3, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_ON:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->JOYSTICK_MODE_OFF:Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->$VALUES:[Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;
    .locals 1

    .line 42
    const-class v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    return-object p0
.end method

.method public static values()[Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;
    .locals 1

    .line 42
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->$VALUES:[Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    invoke-virtual {v0}, [Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/GestureStateMachine/GestureJoyStickMode$JoyStickModeState;

    return-object v0
.end method
