.class public Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;
.super Ljava/lang/Object;
.source "PersistentGLDrawable.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/Drawable;


# instance fields
.field private final content:J

.field private final height:I

.field private final id:I

.field private final painter:Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;

.field private final rootWindow:Lcom/eltechs/axs/xserver/Window;

.field private final visual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "axs-helpers"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Dimensions of a Drawable must be non-negative."

    .line 54
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 56
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->id:I

    .line 57
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    .line 58
    iput-object p5, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->visual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    .line 60
    invoke-static {p3, p4}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->allocateNativeStorage(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->content:J

    .line 61
    iput p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->width:I

    .line 62
    iput p4, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->height:I

    .line 63
    new-instance p1, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;

    invoke-direct {p1, p0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;

    .line 65
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;

    new-instance p2, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable$1;

    invoke-direct {p2, p0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable$1;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->setModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V

    return-void
.end method

.method private static native allocateNativeStorage(II)J
.end method


# virtual methods
.method public getContent()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->content:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->height:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->id:I

    return v0
.end method

.method public getPainter()Lcom/eltechs/axs/xserver/Painter;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;

    return-object v0
.end method

.method public getRoot()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->rootWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getVisual()Lcom/eltechs/axs/xserver/impl/drawables/Visual;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->visual:Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->width:I

    return v0
.end method

.method public installModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->painter:Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PainterOnPersistentGLDrawable;->setModificationListener(Lcom/eltechs/axs/xserver/Drawable$ModificationListener;)V

    return-void
.end method
