.class synthetic Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$3;
.super Ljava/lang/Object;
.source "GestureState1FingerMoveToScrollAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 133
    invoke-static {}, Lcom/eltechs/axs/MovementAccumulator$Direction;->values()[Lcom/eltechs/axs/MovementAccumulator$Direction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$3;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    :try_start_0
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$3;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    sget-object v1, Lcom/eltechs/axs/MovementAccumulator$Direction;->ASC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    invoke-virtual {v1}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/GestureState1FingerMoveToScrollAsync$3;->$SwitchMap$com$eltechs$axs$MovementAccumulator$Direction:[I

    sget-object v1, Lcom/eltechs/axs/MovementAccumulator$Direction;->DESC:Lcom/eltechs/axs/MovementAccumulator$Direction;

    invoke-virtual {v1}, Lcom/eltechs/axs/MovementAccumulator$Direction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
