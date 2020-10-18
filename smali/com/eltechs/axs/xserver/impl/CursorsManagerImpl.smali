.class public Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;
.super Ljava/lang/Object;
.source "CursorsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/CursorsManager;


# instance fields
.field private final cursorLifecycleListenersList:Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

.field private final cursors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/eltechs/axs/xserver/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final drawablesFactory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursors:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->drawablesFactory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    .line 30
    new-instance p1, Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

    invoke-direct {p1}, Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursorLifecycleListenersList:Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

    return-void
.end method


# virtual methods
.method public addCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursorLifecycleListenersList:Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;->addListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V

    return-void
.end method

.method public createCursor(IIILcom/eltechs/axs/xserver/Pixmap;Lcom/eltechs/axs/xserver/Pixmap;)Lcom/eltechs/axs/xserver/Cursor;
    .locals 9

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p5, :cond_1

    .line 48
    invoke-interface {p5}, Lcom/eltechs/axs/xserver/Pixmap;->getBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v1

    :cond_1
    move-object v8, v1

    .line 51
    invoke-interface {p4}, Lcom/eltechs/axs/xserver/Pixmap;->getBackingStore()Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v7

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->drawablesFactory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v7}, Lcom/eltechs/axs/xserver/Drawable;->getWidth()I

    move-result v3

    invoke-interface {v7}, Lcom/eltechs/axs/xserver/Drawable;->getHeight()I

    move-result v4

    invoke-interface {v7}, Lcom/eltechs/axs/xserver/Drawable;->getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->create(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v6

    .line 53
    new-instance p4, Lcom/eltechs/axs/xserver/impl/CursorImpl;

    move-object v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/eltechs/axs/xserver/impl/CursorImpl;-><init>(IIILcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;)V

    .line 54
    iget-object p2, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursorLifecycleListenersList:Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

    invoke-virtual {p1, p4}, Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;->sendCursorCreated(Lcom/eltechs/axs/xserver/Cursor;)V

    return-object p4
.end method

.method public createFakeCursor(I)Lcom/eltechs/axs/xserver/Cursor;
    .locals 14

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->drawablesFactory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->drawablesFactory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->getPreferredVisualForDepth(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->create(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v13

    const/4 v0, 0x4

    .line 71
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 73
    new-array v0, v0, [B

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 75
    invoke-interface {v13}, Lcom/eltechs/axs/xserver/Drawable;->getPainter()Lcom/eltechs/axs/xserver/Painter;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-interface/range {v7 .. v12}, Lcom/eltechs/axs/xserver/Painter;->drawBitmap(IIIILjava/nio/ByteBuffer;)V

    .line 77
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->drawablesFactory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    iget-object v5, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->drawablesFactory:Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;

    invoke-interface {v5, v6}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->getPreferredVisualForDepth(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactory;->create(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object v11

    .line 78
    new-instance v0, Lcom/eltechs/axs/xserver/impl/CursorImpl;

    const/4 v10, 0x0

    move-object v7, v0

    move v8, p1

    move-object v12, v13

    invoke-direct/range {v7 .. v13}, Lcom/eltechs/axs/xserver/impl/CursorImpl;-><init>(IIILcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;Lcom/eltechs/axs/xserver/Drawable;)V

    .line 79
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursorLifecycleListenersList:Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;->sendCursorCreated(Lcom/eltechs/axs/xserver/Cursor;)V

    return-object v0
.end method

.method public freeCursor(Lcom/eltechs/axs/xserver/Cursor;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursors:Ljava/util/Map;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Cursor;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursorLifecycleListenersList:Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;->sendCursorFreed(Lcom/eltechs/axs/xserver/Cursor;)V

    return-void
.end method

.method public getCursor(I)Lcom/eltechs/axs/xserver/Cursor;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/Cursor;

    return-object p1
.end method

.method public recolorCursor(Lcom/eltechs/axs/xserver/Cursor;IIIIII)V
    .locals 7

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/eltechs/axs/xserver/impl/CursorImpl;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/eltechs/axs/xserver/impl/CursorImpl;->recolorCursor(IIIIII)V

    return-void
.end method

.method public removeCursorLifecycleListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/CursorsManagerImpl;->cursorLifecycleListenersList:Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/CursorLifecycleListenerList;->removeListener(Lcom/eltechs/axs/xserver/CursorLifecycleListener;)V

    return-void
.end method
