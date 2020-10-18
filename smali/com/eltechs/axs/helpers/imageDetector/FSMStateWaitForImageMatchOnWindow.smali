.class public Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;
.super Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;
.source "FSMStateWaitForImageMatchOnWindow.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowContentModificationListener;


# static fields
.field public static IMAGE_MATCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;


# instance fields
.field final comparer1:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

.field final comparer2:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

.field final viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

.field final windowHeight:I

.field final windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow$1;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->IMAGE_MATCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    return-void
.end method

.method public constructor <init>(IILcom/eltechs/axs/geom/Rectangle;Lcom/eltechs/axs/geom/Rectangle;[B[BLcom/eltechs/axs/xserver/ViewFacade;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/eltechs/axs/finiteStateMachine/AbstractFSMState;-><init>()V

    .line 37
    iput p1, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->windowWidth:I

    .line 38
    iput p2, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->windowHeight:I

    .line 39
    iput-object p7, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    .line 41
    new-instance p1, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    invoke-direct {p1, p5, p3}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;-><init>([BLcom/eltechs/axs/geom/Rectangle;)V

    iput-object p1, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->comparer1:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    .line 42
    new-instance p1, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    invoke-direct {p1, p6, p4}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;-><init>([BLcom/eltechs/axs/geom/Rectangle;)V

    iput-object p1, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->comparer2:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    return-void
.end method


# virtual methods
.method public contentChanged(Lcom/eltechs/axs/xserver/Window;IIII)V
    .locals 0

    .line 61
    iget p2, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->windowWidth:I

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object p3

    iget p3, p3, Lcom/eltechs/axs/geom/Rectangle;->width:I

    if-ne p2, p3, :cond_1

    iget p2, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->windowHeight:I

    .line 62
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object p3

    iget p3, p3, Lcom/eltechs/axs/geom/Rectangle;->height:I

    if-ne p2, p3, :cond_1

    .line 64
    iget-object p2, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->comparer1:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->isSamplePresentInDrawable(Lcom/eltechs/axs/xserver/Drawable;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->comparer2:Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;

    .line 65
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/helpers/imageDetector/ImageDetector;->isSamplePresentInDrawable(Lcom/eltechs/axs/xserver/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    :cond_0
    sget-object p1, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->IMAGE_MATCHED:Lcom/eltechs/axs/finiteStateMachine/FSMEvent;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->sendEventIfActive(Lcom/eltechs/axs/finiteStateMachine/FSMEvent;)V

    :cond_1
    return-void
.end method

.method public frontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public notifyBecomeActive()V
    .locals 3

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "WAiting for match\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    return-void
.end method

.method public notifyBecomeInactive()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/helpers/imageDetector/FSMStateWaitForImageMatchOnWindow;->viewFacade:Lcom/eltechs/axs/xserver/ViewFacade;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/xserver/ViewFacade;->removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V

    return-void
.end method
