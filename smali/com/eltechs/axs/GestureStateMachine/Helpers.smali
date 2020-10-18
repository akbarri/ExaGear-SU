.class public Lcom/eltechs/axs/GestureStateMachine/Helpers;
.super Ljava/lang/Object;
.source "Helpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustPointerPosition(Lcom/eltechs/axs/xserver/ViewFacade;I)V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/ViewFacade;->getPointerLocation()Lcom/eltechs/axs/geom/Point;

    move-result-object v0

    .line 22
    iget v1, v0, Lcom/eltechs/axs/geom/Point;->x:I

    .line 23
    iget v0, v0, Lcom/eltechs/axs/geom/Point;->y:I

    if-ge v1, p1, :cond_0

    move v1, p1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v2

    iget v2, v2, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    sub-int/2addr v2, p1

    if-le v1, v2, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v1

    iget v1, v1, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    sub-int/2addr v1, p1

    :cond_1
    :goto_0
    if-ge v0, p1, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v2

    iget v2, v2, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    sub-int/2addr v2, p1

    if-le v0, v2, :cond_3

    .line 38
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/ViewFacade;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    sub-int p1, v0, p1

    goto :goto_1

    :cond_3
    move p1, v0

    .line 41
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/eltechs/axs/xserver/ViewFacade;->injectPointerMove(II)V

    return-void
.end method
