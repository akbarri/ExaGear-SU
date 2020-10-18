.class public Lcom/eltechs/axs/xserver/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"


# static fields
.field public static final BUTTON_CENTER:I = 0x2

.field public static final BUTTON_LEFT:I = 0x1

.field public static final BUTTON_RIGHT:I = 0x3

.field public static final BUTTON_SCROLL_CLICK_LEFT:I = 0x6

.field public static final BUTTON_SCROLL_CLICK_RIGHT:I = 0x7

.field public static final BUTTON_SCROLL_DOWN:I = 0x5

.field public static final BUTTON_SCROLL_UP:I = 0x4

.field public static final MAX_BUTTONS:I = 0x7


# instance fields
.field private final buttons:Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

.field private xPos:I

.field private final xServer:Lcom/eltechs/axs/xserver/XServer;

.field private yPos:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/eltechs/axs/xserver/Pointer;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 47
    const-class p1, Lcom/eltechs/axs/xserver/KeyButNames;

    invoke-static {p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/xserver/Pointer;->buttons:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 48
    new-instance p1, Lcom/eltechs/axs/xserver/PointerListenersList;

    invoke-direct {p1}, Lcom/eltechs/axs/xserver/PointerListenersList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/Pointer;->listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

    return-void
.end method

.method private updateCoordinates(II)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Pointer;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v0

    iget v0, v0, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->unsignedSaturate(II)I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/xserver/Pointer;->xPos:I

    .line 69
    iget-object p1, p0, Lcom/eltechs/axs/xserver/Pointer;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object p1

    iget p1, p1, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->unsignedSaturate(II)I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/xserver/Pointer;->yPos:I

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Pointer;->listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/PointerListenersList;->addListener(Lcom/eltechs/axs/xserver/PointerListener;)V

    return-void
.end method

.method public getButtonMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Pointer;->buttons:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/eltechs/axs/xserver/Pointer;->xPos:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/eltechs/axs/xserver/Pointer;->yPos:I

    return v0
.end method

.method public isButtonPressed(I)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Pointer;->buttons:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-static {p1}, Lcom/eltechs/axs/xserver/KeyButNames;->getFlagForButtonNumber(I)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p1

    return p1
.end method

.method public isButtonValid(B)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x7

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/PointerListener;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/eltechs/axs/xserver/Pointer;->listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/PointerListenersList;->removeListener(Lcom/eltechs/axs/xserver/PointerListener;)V

    return-void
.end method

.method public setButton(IZ)V
    .locals 3

    .line 117
    invoke-static {p1}, Lcom/eltechs/axs/xserver/KeyButNames;->getFlagForButtonNumber(I)Lcom/eltechs/axs/xserver/KeyButNames;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/eltechs/axs/xserver/Pointer;->buttons:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/eltechs/axs/xserver/Pointer;->buttons:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v2, v0, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->setValue(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;Z)V

    if-eq v1, p2, :cond_1

    if-eqz p2, :cond_0

    .line 125
    iget-object p2, p0, Lcom/eltechs/axs/xserver/Pointer;->listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/xserver/PointerListenersList;->sendPointerButtonPressed(I)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object p2, p0, Lcom/eltechs/axs/xserver/Pointer;->listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/xserver/PointerListenersList;->sendPointerButtonReleased(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCoordinates(II)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/xserver/Pointer;->updateCoordinates(II)V

    .line 81
    iget-object p1, p0, Lcom/eltechs/axs/xserver/Pointer;->listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

    iget p2, p0, Lcom/eltechs/axs/xserver/Pointer;->xPos:I

    iget v0, p0, Lcom/eltechs/axs/xserver/Pointer;->yPos:I

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/xserver/PointerListenersList;->sendPointerMoved(II)V

    return-void
.end method

.method public warpOnCoordinates(II)V
    .locals 1

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/xserver/Pointer;->updateCoordinates(II)V

    .line 95
    iget-object p1, p0, Lcom/eltechs/axs/xserver/Pointer;->listeners:Lcom/eltechs/axs/xserver/PointerListenersList;

    iget p2, p0, Lcom/eltechs/axs/xserver/Pointer;->xPos:I

    iget v0, p0, Lcom/eltechs/axs/xserver/Pointer;->yPos:I

    invoke-virtual {p1, p2, v0}, Lcom/eltechs/axs/xserver/PointerListenersList;->sendPointerWarped(II)V

    return-void
.end method
