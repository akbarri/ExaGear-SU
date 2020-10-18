.class public interface abstract Lcom/eltechs/axs/xserver/Window;
.super Ljava/lang/Object;
.source "Window.java"


# virtual methods
.method public abstract getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;
.end method

.method public abstract getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;
.end method

.method public abstract getChildrenBottomToTop()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;
.end method

.method public abstract getChildrenTopToBottom()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCreator()Lcom/eltechs/axs/xserver/client/XClient;
.end method

.method public abstract getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;
.end method

.method public abstract getFrontBuffer()Lcom/eltechs/axs/xserver/Drawable;
.end method

.method public abstract getId()I
.end method

.method public abstract getParent()Lcom/eltechs/axs/xserver/Window;
.end method

.method public abstract getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;
.end method

.method public abstract getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;
.end method

.method public abstract isInputOutput()Z
.end method

.method public abstract replaceBackingStores(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;)V
.end method

.method public abstract setBoundingRectangle(Lcom/eltechs/axs/geom/Rectangle;)V
.end method

.method public abstract setParent(Lcom/eltechs/axs/xserver/Window;)V
.end method
