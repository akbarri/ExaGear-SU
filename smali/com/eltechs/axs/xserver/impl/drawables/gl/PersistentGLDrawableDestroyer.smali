.class public Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawableDestroyer;
.super Ljava/lang/Object;
.source "PersistentGLDrawableDestroyer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final content:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "axs-helpers"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;->getContent()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawableDestroyer;->content:J

    return-void
.end method


# virtual methods
.method public native destroyDrawable(J)V
.end method

.method public run()V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawableDestroyer;->content:J

    invoke-virtual {p0, v0, v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawableDestroyer;->destroyDrawable(J)V

    return-void
.end method
