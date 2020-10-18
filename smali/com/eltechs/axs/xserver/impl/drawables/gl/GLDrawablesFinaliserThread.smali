.class public Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;
.super Ljava/lang/Thread;
.source "GLDrawablesFinaliserThread.java"


# instance fields
.field private final finalisationHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ref/Reference<",
            "*>;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "*>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->finalisationHandlers:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public registerFinalisationHandler(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/ref/PhantomReference;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 38
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->finalisationHandlers:Ljava/util/Map;

    monitor-enter p1

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->finalisationHandlers:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public run()V
    .locals 3

    .line 51
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->finalisationHandlers:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->finalisationHandlers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 57
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 57
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method
