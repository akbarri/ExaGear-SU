.class public Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;
.super Ljava/lang/Object;
.source "EventsInjectorImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/EventsInjector;


# instance fields
.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-void
.end method


# virtual methods
.method public injectKeyPress(BI)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyPressed(BI)V

    return-void
.end method

.method public injectKeyRelease(BI)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getKeyboard()Lcom/eltechs/axs/xserver/Keyboard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/Keyboard;->keyReleased(BI)V

    return-void
.end method

.method public injectPointerButtonPress(I)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/xserver/Pointer;->setButton(IZ)V

    return-void
.end method

.method public injectPointerButtonRelease(I)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/eltechs/axs/xserver/Pointer;->setButton(IZ)V

    return-void
.end method

.method public injectPointerMove(II)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/EventsInjectorImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getPointer()Lcom/eltechs/axs/xserver/Pointer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eltechs/axs/xserver/Pointer;->setCoordinates(II)V

    return-void
.end method
