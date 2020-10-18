.class public interface abstract Lcom/eltechs/axs/xserver/GrabsManager;
.super Ljava/lang/Object;
.source "GrabsManager.java"


# virtual methods
.method public abstract disableAutomaticOrPassiveGrab()V
.end method

.method public abstract disablePointerGrab()V
.end method

.method public abstract getPointerGrabListener()Lcom/eltechs/axs/xserver/client/XClientWindowListener;
.end method

.method public abstract getPointerGrabOwnerEvents()Z
.end method

.method public abstract getPointerGrabTime()I
.end method

.method public abstract getPointerGrabWindow()Lcom/eltechs/axs/xserver/Window;
.end method

.method public abstract initiateActivePointerGrab(Lcom/eltechs/axs/xserver/Window;ZLcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/Cursor;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/DeviceGrabMode;Lcom/eltechs/axs/xserver/DeviceGrabMode;ILcom/eltechs/axs/xserver/client/XClient;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Window;",
            "Z",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/Cursor;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/DeviceGrabMode;",
            "Lcom/eltechs/axs/xserver/DeviceGrabMode;",
            "I",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract initiateAutomaticPointerGrab(Lcom/eltechs/axs/xserver/Window;)V
.end method
