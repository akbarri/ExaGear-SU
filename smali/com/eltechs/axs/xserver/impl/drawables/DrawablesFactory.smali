.class public interface abstract Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;
.super Ljava/lang/Object;
.source "DrawablesFactory.java"


# virtual methods
.method public abstract create(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;
.end method

.method public abstract getPreferredVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;
.end method

.method public abstract getPreferredVisualForDepth(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;
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
