.class public abstract Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;
.super Ljava/lang/Object;
.source "DrawablesFactoryImplBase.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;


# instance fields
.field private final preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

.field private final supportedImageFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedVisuals:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;",
            ">;",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 19
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->supportedVisuals:Ljava/util/Collection;

    .line 20
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->supportedImageFormats:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final getPreferredVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    return-object v0
.end method

.method public final getPreferredVisualForDepth(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    return-object p1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->supportedVisuals:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 70
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v2

    if-ne p1, v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getSupportedImageFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->supportedImageFormats:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedVisuals()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->supportedVisuals:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getVisual(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 40
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->preferredVisual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    return-object p1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;->supportedVisuals:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 45
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->isDisplayable()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
