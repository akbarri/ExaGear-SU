.class Lcom/eltechs/ed/controls/touchControls/RtsTCF$2;
.super Ljava/lang/Object;
.source "RtsTCF.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/ed/controls/touchControls/RtsTCF;->createGestureContext(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;Lcom/eltechs/axs/TouchArea;Lcom/eltechs/axs/TouchEventMultiplexor;I)Lcom/eltechs/axs/GestureStateMachine/GestureContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/ed/controls/touchControls/RtsTCF;


# direct methods
.method constructor <init>(Lcom/eltechs/ed/controls/touchControls/RtsTCF;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/eltechs/ed/controls/touchControls/RtsTCF$2;->this$0:Lcom/eltechs/ed/controls/touchControls/RtsTCF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/eltechs/ed/controls/touchControls/RtsTCF$2;->this$0:Lcom/eltechs/ed/controls/touchControls/RtsTCF;

    iget-object v0, v0, Lcom/eltechs/ed/controls/touchControls/RtsTCF;->mUIOverlay:Lcom/eltechs/axs/activities/XServerDisplayActivityInterfaceOverlay;

    check-cast v0, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;

    invoke-virtual {v0}, Lcom/eltechs/ed/controls/uiOverlays/DefaultUIOverlay;->toggleToolbar()V

    return-void
.end method
