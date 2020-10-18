.class public Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;
.super Ljava/lang/Object;
.source "MouseClickAdapterWithCheckPlacementContext.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;


# instance fields
.field private actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

.field private final clickerAim:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

.field private final clickerDouble:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

.field private final clickerTap:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

.field private final doubleClickMaxInterval:I

.field private final pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;Lcom/eltechs/axs/GestureStateMachine/PointerContext;I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->clickerTap:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    .line 37
    iput-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->clickerAim:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    .line 38
    iput-object p3, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->clickerDouble:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    .line 39
    iput-object p4, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    .line 40
    iput p5, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->doubleClickMaxInterval:I

    return-void
.end method


# virtual methods
.method public click(FF)V
    .locals 4

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-virtual {v2}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->getLastMoveTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->doubleClickMaxInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->clickerDouble:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    iput-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->pointerContext:Lcom/eltechs/axs/GestureStateMachine/PointerContext;

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/PointerContext;->getLastMoveMethod()Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    move-result-object v0

    sget-object v1, Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;->AIM:Lcom/eltechs/axs/GestureStateMachine/PointerContext$MoveMethod;

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->clickerAim:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    iput-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->clickerTap:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    iput-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;->click(FF)V

    return-void
.end method

.method public finalizeClick(FF)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/MouseClickAdapterWithCheckPlacementContext;->actualClicker:Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/GuestAppActionAdapters/MousePointAndClickAdapter;->finalizeClick(FF)V

    return-void
.end method
