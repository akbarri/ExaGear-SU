.class public Lcom/eltechs/axs/xserver/impl/WindowImpl;
.super Ljava/lang/Object;
.source "WindowImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Window;


# instance fields
.field private final attributes:Lcom/eltechs/axs/xserver/WindowAttributes;

.field private backBuffer:Lcom/eltechs/axs/xserver/Drawable;

.field private boundingRectangle:Lcom/eltechs/axs/geom/Rectangle;

.field private final children:Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

.field private final contentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

.field private final creator:Lcom/eltechs/axs/xserver/client/XClient;

.field private final eventListenersList:Lcom/eltechs/axs/xserver/WindowListenersList;

.field private frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

.field private final id:I

.field private parent:Lcom/eltechs/axs/xserver/Window;

.field private final propertiesManager:Lcom/eltechs/axs/xserver/WindowPropertiesManager;


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;Lcom/eltechs/axs/xserver/WindowChangeListenersList;Lcom/eltechs/axs/xserver/client/XClient;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->id:I

    if-eqz p2, :cond_0

    .line 61
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    .line 62
    iput-object p3, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->backBuffer:Lcom/eltechs/axs/xserver/Drawable;

    .line 64
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/impl/WindowImpl;->installFrontBufferModificationListener()V

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p2, "Can\'t create a window with a back buffer only."

    .line 67
    invoke-static {p1, p2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    .line 70
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->backBuffer:Lcom/eltechs/axs/xserver/Drawable;

    .line 73
    :goto_1
    new-instance p1, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->children:Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    .line 74
    new-instance p1, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->propertiesManager:Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    .line 75
    new-instance p1, Lcom/eltechs/axs/xserver/WindowAttributes;

    sget-object p2, Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;->INPUT_OUTPUT:Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;

    invoke-direct {p1, p2, p5, p0}, Lcom/eltechs/axs/xserver/WindowAttributes;-><init>(Lcom/eltechs/axs/xserver/WindowAttributes$WindowClass;Lcom/eltechs/axs/xserver/WindowChangeListenersList;Lcom/eltechs/axs/xserver/Window;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->attributes:Lcom/eltechs/axs/xserver/WindowAttributes;

    .line 78
    new-instance p1, Lcom/eltechs/axs/xserver/WindowListenersList;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/xserver/WindowListenersList;-><init>(Lcom/eltechs/axs/xserver/Window;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->eventListenersList:Lcom/eltechs/axs/xserver/WindowListenersList;

    .line 79
    iput-object p4, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->contentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    .line 81
    iput-object p6, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->creator:Lcom/eltechs/axs/xserver/client/XClient;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/xserver/impl/WindowImpl;)Lcom/eltechs/axs/xserver/impl/WindowChildrenList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->children:Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/eltechs/axs/xserver/impl/WindowImpl;)Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->contentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    return-object p0
.end method

.method private installFrontBufferModificationListener()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    new-instance v1, Lcom/eltechs/axs/xserver/impl/WindowImpl$2;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/xserver/impl/WindowImpl$2;-><init>(Lcom/eltechs/axs/xserver/impl/WindowImpl;)V

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/Drawable;->installModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V

    return-void
.end method


# virtual methods
.method public getActiveBackingStore()Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    return-object v0
.end method

.method public getBackBuffer()Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->backBuffer:Lcom/eltechs/axs/xserver/Drawable;

    return-object v0
.end method

.method public getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->boundingRectangle:Lcom/eltechs/axs/geom/Rectangle;

    return-object v0
.end method

.method public getChildrenBottomToTop()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->children:Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/WindowChildrenList;->getChildren()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenList()Lcom/eltechs/axs/xserver/impl/WindowChildrenList;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->children:Lcom/eltechs/axs/xserver/impl/WindowChildrenList;

    return-object v0
.end method

.method public getChildrenTopToBottom()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/eltechs/axs/xserver/Window;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lcom/eltechs/axs/xserver/impl/WindowImpl$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/impl/WindowImpl$1;-><init>(Lcom/eltechs/axs/xserver/impl/WindowImpl;)V

    return-object v0
.end method

.method public getCreator()Lcom/eltechs/axs/xserver/client/XClient;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->creator:Lcom/eltechs/axs/xserver/client/XClient;

    return-object v0
.end method

.method public getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->eventListenersList:Lcom/eltechs/axs/xserver/WindowListenersList;

    return-object v0
.end method

.method public getFrontBuffer()Lcom/eltechs/axs/xserver/Drawable;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->id:I

    return v0
.end method

.method public getParent()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->parent:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getPropertiesManager()Lcom/eltechs/axs/xserver/WindowPropertiesManager;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->propertiesManager:Lcom/eltechs/axs/xserver/WindowPropertiesManager;

    return-object v0
.end method

.method public getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->attributes:Lcom/eltechs/axs/xserver/WindowAttributes;

    return-object v0
.end method

.method public isInputOutput()Z
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public replaceBackingStores(Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;)V
    .locals 6

    .line 213
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/WindowImpl;->isInputOutput()Z

    move-result v0

    const-string v1, "replaceBackingStores has been called for the window %d which is input-only."

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const-string v0, "replaceBackingStores() can\'t be used to turn a window into an input-only one."

    .line 215
    invoke-static {p1, v0}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const-string v0, "replaceBackingStores() can\'t be used to change the image format of a window."

    invoke-static {v2, v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 223
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->frontBuffer:Lcom/eltechs/axs/xserver/Drawable;

    .line 224
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->backBuffer:Lcom/eltechs/axs/xserver/Drawable;

    .line 226
    invoke-direct {p0}, Lcom/eltechs/axs/xserver/impl/WindowImpl;->installFrontBufferModificationListener()V

    .line 227
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->contentModificationListenersList:Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;

    invoke-virtual {p1, p0}, Lcom/eltechs/axs/xserver/WindowContentModificationListenersList;->sendFrontBufferReplaced(Lcom/eltechs/axs/xserver/Window;)V

    return-void
.end method

.method public setBoundingRectangle(Lcom/eltechs/axs/geom/Rectangle;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->boundingRectangle:Lcom/eltechs/axs/geom/Rectangle;

    return-void
.end method

.method public setParent(Lcom/eltechs/axs/xserver/Window;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->parent:Lcom/eltechs/axs/xserver/Window;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "The window %s already has a parent."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 142
    :cond_1
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowImpl;->parent:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method
