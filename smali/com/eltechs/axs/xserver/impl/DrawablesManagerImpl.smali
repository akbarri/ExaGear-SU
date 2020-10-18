.class public Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;
.super Ljava/lang/Object;
.source "DrawablesManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/DrawablesManager;


# instance fields
.field private final drawables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->drawables:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    return-void
.end method


# virtual methods
.method public createDrawable(ILcom/eltechs/axs/xserver/Window;IIB)Lcom/eltechs/axs/xserver/Drawable;
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    invoke-static {p5}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result p5

    invoke-interface {v0, p5}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->getPreferredVisualForDepth(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 47
    invoke-virtual/range {v1 .. v6}, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->createDrawable(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public createDrawable(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;
    .locals 6

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->drawables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->create(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p2

    .line 63
    iget-object p3, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->drawables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public getDrawable(I)Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->drawables:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/Drawable;

    return-object p1
.end method

.method public getPreferredVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->getPreferredVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedImageFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->getSupportedImageFormats()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedVisuals()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->getSupportedVisuals()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVisual(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->factory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->getVisual(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p1

    return-object p1
.end method

.method public removeDrawable(Lcom/eltechs/axs/xserver/Drawable;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/DrawablesManagerImpl;->drawables:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
