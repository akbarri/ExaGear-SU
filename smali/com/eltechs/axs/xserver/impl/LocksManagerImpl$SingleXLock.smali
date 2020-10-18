.class final Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$SingleXLock;
.super Ljava/lang/Object;
.source "LocksManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/LocksManager$XLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xserver/impl/LocksManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleXLock"
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/LocksManagerImpl$SingleXLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
