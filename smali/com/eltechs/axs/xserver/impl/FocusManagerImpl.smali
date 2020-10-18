.class public Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;
.super Ljava/lang/Object;
.source "FocusManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/FocusManager;
.implements Lcom/eltechs/axs/xserver/WindowLifecycleListener;


# instance fields
.field private focusedWindow:Lcom/eltechs/axs/xserver/Window;

.field private listeners:Lcom/eltechs/axs/xserver/FocusListenersList;

.field private reversionPolicy:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

.field private xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/XServer;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->NONE:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->reversionPolicy:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    .line 27
    new-instance v0, Lcom/eltechs/axs/xserver/FocusListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/FocusListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->listeners:Lcom/eltechs/axs/xserver/FocusListenersList;

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    .line 29
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-void
.end method

.method private revertFocus()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    .line 39
    sget-object v1, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl$1;->$SwitchMap$com$eltechs$axs$xserver$FocusManager$FocusReversionPolicy:[I

    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->reversionPolicy:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 48
    :pswitch_0
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    .line 54
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    if-eq v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->listeners:Lcom/eltechs/axs/xserver/FocusListenersList;

    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    invoke-virtual {v1, v0, v2}, Lcom/eltechs/axs/xserver/FocusListenersList;->sendFocusChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addFocusListner(Lcom/eltechs/axs/xserver/FocusListener;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->listeners:Lcom/eltechs/axs/xserver/FocusListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/FocusListenersList;->addListener(Lcom/eltechs/axs/xserver/FocusListener;)V

    return-void
.end method

.method public getFocusReversionPolicy()Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->reversionPolicy:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    return-object v0
.end method

.method public getFocusedWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public removeFocusListener(Lcom/eltechs/axs/xserver/FocusListener;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->listeners:Lcom/eltechs/axs/xserver/FocusListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/FocusListenersList;->removeListener(Lcom/eltechs/axs/xserver/FocusListener;)V

    return-void
.end method

.method public setFocus(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    .line 71
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    .line 72
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->reversionPolicy:Lcom/eltechs/axs/xserver/FocusManager$FocusReversionPolicy;

    if-eq v0, p1, :cond_0

    .line 76
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->listeners:Lcom/eltechs/axs/xserver/FocusListenersList;

    invoke-virtual {p2, v0, p1}, Lcom/eltechs/axs/xserver/FocusListenersList;->sendFocusChanged(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V

    :cond_0
    return-void
.end method

.method public windowCreated(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method

.method public windowDestroyed(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    if-ne p1, v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->revertFocus()V

    :cond_0
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
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->focusedWindow:Lcom/eltechs/axs/xserver/Window;

    if-ne p1, v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/impl/FocusManagerImpl;->revertFocus()V

    :cond_0
    return-void
.end method

.method public windowZOrderChange(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    return-void
.end method
