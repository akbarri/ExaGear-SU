.class public interface abstract Lcom/eltechs/axs/xserver/WindowsManager;
.super Ljava/lang/Object;
.source "WindowsManager.java"


# virtual methods
.method public abstract addWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
.end method

.method public abstract addWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
.end method

.method public abstract addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
.end method

.method public abstract changeRelativeWindowGeometry(Lcom/eltechs/axs/xserver/Window;IIII)V
.end method

.method public abstract changeWindowZOrder(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/StackMode;)V
.end method

.method public abstract createWindow(ILcom/eltechs/axs/xserver/Window;IIIILcom/eltechs/axs/xserver/impl/drawables/Visual;ZLcom/eltechs/axs/xserver/client/XClient;)Lcom/eltechs/axs/xserver/Window;
.end method

.method public abstract destroySubwindows(Lcom/eltechs/axs/xserver/Window;)V
.end method

.method public abstract destroyWindow(Lcom/eltechs/axs/xserver/Window;)V
.end method

.method public abstract getDrawablesForOutput()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/xserver/PlacedDrawable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRootWindow()Lcom/eltechs/axs/xserver/Window;
.end method

.method public abstract getWindow(I)Lcom/eltechs/axs/xserver/Window;
.end method

.method public abstract mapSubwindows(Lcom/eltechs/axs/xserver/Window;)V
.end method

.method public abstract mapWindow(Lcom/eltechs/axs/xserver/Window;)V
.end method

.method public abstract removeWindowChangeListener(Lcom/eltechs/axs/xserver/WindowChangeListener;)V
.end method

.method public abstract removeWindowContentModificationListner(Lcom/eltechs/axs/xserver/WindowContentModificationListener;)V
.end method

.method public abstract removeWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V
.end method

.method public abstract unmapSubwindows(Lcom/eltechs/axs/xserver/Window;)V
.end method

.method public abstract unmapWindow(Lcom/eltechs/axs/xserver/Window;)V
.end method
