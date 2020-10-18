.class public Lcom/eltechs/axs/GestureStateMachine/PointerContext;
.super Ljava/lang/Object;
.source "PointerContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;
    }
.end annotation


# instance fields
.field private lastMoveMethod:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

.field private lastMoveTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->NOT_INIT:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    iput-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->lastMoveMethod:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    return-void
.end method


# virtual methods
.method public getLastMoveMethod()Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->lastMoveMethod:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    return-object v0
.end method

.method public getLastMoveTimestamp()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->lastMoveTimestamp:J

    return-wide v0
.end method

.method public setLastMoveMethod(Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;)V
    .locals 2

    .line 35
    iput-object p1, p0, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->lastMoveMethod:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->lastMoveTimestamp:J

    return-void
.end method
