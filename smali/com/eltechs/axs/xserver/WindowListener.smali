.class public interface abstract Lcom/eltechs/axs/xserver/WindowListener;
.super Ljava/lang/Object;
.source "WindowListener.java"


# virtual methods
.method public abstract getMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z
.end method

.method public abstract isInterestedIn(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V
.end method
