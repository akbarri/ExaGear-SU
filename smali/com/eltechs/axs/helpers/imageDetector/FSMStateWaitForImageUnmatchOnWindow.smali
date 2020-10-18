.class public Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "FSMStateWaitForImageUnmatchOnWindow.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowContentModificationListener;
.implements Lcom/eltechs/axs/xserver/WindowLifecycleListener;


# static fields
.field public static IMAGE_UNMATCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

.field public static TARGET_NOT_FOUND:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field final comparer1:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

.field final comparer2:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

.field target:Lcom/eltechs/axs/xserver/Drawable;

.field final viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow$1;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->IMAGE_UNMATCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    .line 23
    new-instance v0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow$2;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow$2;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->TARGET_NOT_FOUND:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(IILcom/eltechs/axs/geom/Rectangle;Lcom/eltechs/axs/geom/Rectangle;[B[BLcom/eltechs/axs/xserver/ViewFacade;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 33
    iput-object p7, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 35
    new-instance p1, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    invoke-direct {p1, p5, p3}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;-><init>([BLcom/eltechs/axs/geom/Rectangle;)V

    iput-object p1, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->comparer1:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    .line 36
    new-instance p1, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    invoke-direct {p1, p6, p4}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;-><init>([BLcom/eltechs/axs/geom/Rectangle;)V

    iput-object p1, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->comparer2:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    return-void
.end method


# virtual methods
.method checkMatch(Lcom/eltechs/axs/xserver/Drawable;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->comparer1:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->isSamplePresentInDrawable(Lcom/eltechs/axs/xserver/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->comparer2:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    .line 67
    invoke-virtual {v0, p1}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->isSamplePresentInDrawable(Lcom/eltechs/axs/xserver/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public contentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 0

    .line 84
    iget-object p2, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-static {p2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 86
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    if-ne p1, p2, :cond_1

    .line 88
    iget-object p1, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->checkMatch(Lcom/eltechs/axs/xserver/Drawable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "image unmatched\n"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 91
    sget-object p1, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->IMAGE_UNMATCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->sendEventIfActive(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_1
    return-void
.end method

.method public frontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public notifyBecomeActive()V
    .locals 4

    .line 43
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WAiting for unmatch\n"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/ViewFacade;->listNonRootWindowDrawables()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/PlacedDrawable;

    .line 50
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/PlacedDrawable;->getDrawable()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->checkMatch(Lcom/eltechs/axs/xserver/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/PlacedDrawable;->getDrawable()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    return-void

    .line 60
    :cond_2
    sget-object v0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->TARGET_NOT_FOUND:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, v0}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->sendEvent(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    :cond_0
    return-void
.end method

.method public windowCreated(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowMapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowReparented(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowUnmapped(Lcom/eltechs/axs/xserver/Window;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 101
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->target:Lcom/eltechs/axs/xserver/Drawable;

    if-ne p1, v0, :cond_1

    .line 103
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "image unmatched (d gone)\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 104
    sget-object p1, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->IMAGE_UNMATCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageUnmatchOnWindow;->sendEventIfActive(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_1
    return-void
.end method

.method public windowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method
