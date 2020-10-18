.class public Lcom/eltechs/axs/proto/output/replies/Screen;
.super Ljava/lang/Object;
.source "Screen.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "root",
        "colormap",
        "whitePixel",
        "blackPixel",
        "currentInputMasks",
        "widthInPixels",
        "heightInPixels",
        "widthInMillimeters",
        "heightInMillimeters",
        "minInstalledMaps",
        "maxInstalledMaps",
        "rootVisual",
        "backingStores",
        "saveUnders",
        "rootDepth",
        "allowedDepthsCount",
        "allowedDepths"
    }
.end annotation


# instance fields
.field public final allowedDepths:[Lcom/eltechs/axs/proto/output/replies/Depth;

.field public final allowedDepthsCount:B

.field public final backingStores:B

.field public final blackPixel:I

.field public final colormap:I

.field public final currentInputMasks:I

.field public final heightInMillimeters:S

.field public final heightInPixels:S

.field public final maxInstalledMaps:S

.field public final minInstalledMaps:S

.field public final root:I

.field public final rootDepth:B

.field public final rootVisual:I

.field public final saveUnders:B

.field public final whitePixel:I

.field public final widthInMillimeters:S

.field public final widthInPixels:S


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 7

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->colormap:I

    const v1, 0xffffff

    .line 36
    iput v1, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->whitePixel:I

    .line 37
    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->blackPixel:I

    const/4 v1, 0x1

    .line 47
    iput-short v1, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->minInstalledMaps:S

    .line 48
    iput-short v1, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->maxInstalledMaps:S

    .line 52
    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->backingStores:B

    .line 53
    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->saveUnders:B

    .line 62
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/WindowsManager;->getRootWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v2

    iput v2, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->root:I

    .line 64
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/WindowListenersList;->calculateAllEventsMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v2

    iput v2, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->currentInputMasks:I

    .line 66
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getScreenInfo()Lcom/eltechs/axs/xserver/ScreenInfo;

    move-result-object v2

    .line 68
    iget v3, v2, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInPixels:I

    int-to-short v3, v3

    iput-short v3, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->widthInPixels:S

    .line 69
    iget v3, v2, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInPixels:I

    int-to-short v3, v3

    iput-short v3, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->heightInPixels:S

    .line 71
    iget v3, v2, Lcom/eltechs/axs/xserver/ScreenInfo;->widthInMillimeters:I

    int-to-short v3, v3

    iput-short v3, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->widthInMillimeters:S

    .line 72
    iget v2, v2, Lcom/eltechs/axs/xserver/ScreenInfo;->heightInMillimeters:I

    int-to-short v2, v2

    iput-short v2, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->heightInMillimeters:S

    .line 76
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 77
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/DrawablesManager;->getSupportedVisuals()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 79
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-nez v4, :cond_0

    .line 82
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 83
    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->allowedDepthsCount:B

    .line 90
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Lcom/eltechs/axs/proto/output/replies/Depth;

    iput-object p1, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->allowedDepths:[Lcom/eltechs/axs/proto/output/replies/Depth;

    .line 93
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    iget-object v3, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->allowedDepths:[Lcom/eltechs/axs/proto/output/replies/Depth;

    add-int/lit8 v4, v0, 0x1

    new-instance v5, Lcom/eltechs/axs/proto/output/replies/Depth;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v5, v6, v2}, Lcom/eltechs/axs/proto/output/replies/Depth;-><init>(ILjava/util/Collection;)V

    aput-object v5, v3, v0

    move v0, v4

    goto :goto_1

    .line 99
    :cond_2
    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->rootVisual:I

    .line 102
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/eltechs/axs/proto/output/replies/Screen;->rootDepth:B

    return-void
.end method
