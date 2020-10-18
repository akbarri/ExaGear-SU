.class final Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$2;
.super Ljava/lang/Object;
.source "GestureMachineConfigurerCiv3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3;->createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;ILcom/eltechs/axs/GestureStateMachine/GestureMouseMode;Ljava/lang/Runnable;)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/eltechs/axs/GestureStateMachine/GestureContext;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/GestureStateMachine/GestureContext;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$2;->val$context:Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/eltechs/axs/gamesControls/GestureMachineConfigurerCiv3$2;->val$context:Lcom/eltechs/axs/GestureStateMachine/GestureContext;

    invoke-virtual {v0}, Lcom/eltechs/axs/GestureStateMachine/GestureContext;->getPointerReporter()Lcom/eltechs/axs/PointerEventReporter;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/PointerEventReporter;->click(II)V

    return-void
.end method
