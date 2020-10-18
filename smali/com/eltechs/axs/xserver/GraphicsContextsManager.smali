.class public interface abstract Lcom/eltechs/axs/xserver/GraphicsContextsManager;
.super Ljava/lang/Object;
.source "GraphicsContextsManager.java"


# virtual methods
.method public abstract addGraphicsContextsLifecycleListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V
.end method

.method public abstract createGraphicsContext(ILcom/eltechs/axs/xserver/Drawable;)Lcom/eltechs/axs/xserver/GraphicsContext;
.end method

.method public abstract getGraphicsContext(I)Lcom/eltechs/axs/xserver/GraphicsContext;
.end method

.method public abstract removeGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;)V
.end method

.method public abstract removeGraphicsContextLifecycleListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V
.end method

.method public abstract updateGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillRule;Lcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/GraphicsContext;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;",
            ">;",
            "Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;",
            "Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;",
            "Lcom/eltechs/axs/xserver/graphicsContext/FillRule;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Pixmap;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;",
            ")V"
        }
    .end annotation
.end method
