.class public Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;
.super Ljava/lang/Object;
.source "GraphicsContextsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/GraphicsContextsManager;


# instance fields
.field private final gcs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/GraphicsContext;",
            ">;"
        }
    .end annotation
.end field

.field private final graphicsContextLifecycleListenersList:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->gcs:Ljava/util/Map;

    .line 21
    new-instance v0, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;

    invoke-direct {v0}, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->graphicsContextLifecycleListenersList:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;

    return-void
.end method


# virtual methods
.method public addGraphicsContextsLifecycleListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->graphicsContextLifecycleListenersList:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->addListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V

    return-void
.end method

.method public createGraphicsContext(ILcom/eltechs/axs/xserver/Drawable;)Lcom/eltechs/axs/xserver/GraphicsContext;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->gcs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;

    invoke-direct {v0, p1, p2}, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;-><init>(ILcom/eltechs/axs/xserver/Drawable;)V

    .line 38
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->gcs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->graphicsContextLifecycleListenersList:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->sendGraphicsContextCreated(Lcom/eltechs/axs/xserver/GraphicsContext;)V

    return-object v0
.end method

.method public getGraphicsContext(I)Lcom/eltechs/axs/xserver/GraphicsContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->gcs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/GraphicsContext;

    return-object p1
.end method

.method public removeGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->gcs:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/GraphicsContext;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->graphicsContextLifecycleListenersList:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->sendGraphicsContextFreed(Lcom/eltechs/axs/xserver/GraphicsContext;)V

    return-void
.end method

.method public removeGraphicsContextLifecycleListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/GraphicsContextsManagerImpl;->graphicsContextLifecycleListenersList:Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListenersList;->removeListener(Lcom/eltechs/axs/xserver/GraphicsContextLifecycleListener;)V

    return-void
.end method

.method public updateGraphicsContext(Lcom/eltechs/axs/xserver/GraphicsContext;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/LineStyle;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/JoinStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillStyle;Lcom/eltechs/axs/xserver/graphicsContext/FillRule;Lcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/Pixmap;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/eltechs/axs/xserver/graphicsContext/ArcMode;)V
    .locals 3
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

    move-object v0, p2

    .line 77
    move-object v1, p1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;

    .line 79
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FUNCTION:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p3

    .line 81
    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->setFunction(Lcom/eltechs/axs/xserver/graphicsContext/PixelCompositionRule;)V

    .line 83
    :cond_0
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->PLANE_MASK:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->setPlaneMask(I)V

    .line 87
    :cond_1
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->FOREGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->setForeground(I)V

    .line 91
    :cond_2
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->BACKGROUND:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->setBackground(I)V

    .line 96
    :cond_3
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->SUBWINDOW_MODE:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v2, p18

    .line 98
    invoke-virtual {v1, v2}, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->setSubwindowMode(Lcom/eltechs/axs/xserver/graphicsContext/SubwindowMode;)V

    .line 101
    :cond_4
    sget-object v2, Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;->LINE_WIDTH:Lcom/eltechs/axs/xserver/graphicsContext/GraphicsContextParts;

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/xserver/impl/GraphicsContextImpl;->setLineWidth(I)V

    :cond_5
    return-void
.end method
