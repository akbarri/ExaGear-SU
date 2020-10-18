.class public interface abstract Lcom/eltechs/axs/xserver/DrawablesManager;
.super Ljava/lang/Object;
.source "DrawablesManager.java"


# virtual methods
.method public abstract createDrawable(ILcom/eltechs/axs/xserver/Window;IIB)Lcom/eltechs/axs/xserver/Drawable;
.end method

.method public abstract createDrawable(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;
.end method

.method public abstract getDrawable(I)Lcom/eltechs/axs/xserver/Drawable;
.end method

.method public abstract getPreferredVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;
.end method

.method public abstract getSupportedImageFormats()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedVisuals()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVisual(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;
.end method

.method public abstract removeDrawable(Lcom/eltechs/axs/xserver/Drawable;)V
.end method
