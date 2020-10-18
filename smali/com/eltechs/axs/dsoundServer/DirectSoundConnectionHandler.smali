.class public Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;
.super Ljava/lang/Object;
.source "DirectSoundConnectionHandler.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/ConnectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler$ClientCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/proto/input/ConnectionHandler<",
        "Lcom/eltechs/axs/dsoundServer/DirectSoundClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final clients:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/dsoundServer/DirectSoundClient;",
            ">;"
        }
    .end annotation
.end field

.field private final directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;

.field private final shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/sysvipc/SHMEngine;Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->clients:Ljava/util/Collection;

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    .line 30
    iput-object p2, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;

    return-void
.end method


# virtual methods
.method public declared-synchronized forEachClient(Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler$ClientCallback;)V
    .locals 2

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->clients:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

    .line 55
    invoke-interface {p1, v1}, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler$ClientCallback;->apply(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 52
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized handleConnectionShutdown(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;)V
    .locals 1

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->clients:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p1}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic handleConnectionShutdown(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->handleConnectionShutdown(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;)V

    return-void
.end method

.method public declared-synchronized handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/dsoundServer/DirectSoundClient;
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xconnectors/XInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 37
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 39
    new-instance p1, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

    iget-object p2, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->directSoundBufferFactory:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;

    invoke-direct {p1, p2, v0}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;-><init>(Lcom/eltechs/axs/sysvipc/SHMEngine;Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;)V

    .line 40
    iget-object p2, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->clients:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 35
    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/dsoundServer/DirectSoundConnectionHandler;->handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

    move-result-object p1

    return-object p1
.end method
