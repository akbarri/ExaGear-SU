.class public Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;
.super Ljava/lang/Object;
.source "DirectSoundGlobalNotifier.java"


# static fields
.field private static instance:Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;


# instance fields
.field private final client:Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

.field private final outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->client:Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

    .line 45
    iput-object p2, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    return-void
.end method

.method public static createInstance(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;

    invoke-direct {v0, p0, p1}, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;-><init>(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)V

    sput-object v0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->instance:Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;

    return-void
.end method

.method public static getInstance()Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;
    .locals 1

    .line 24
    sget-object v0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->instance:Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;

    return-object v0
.end method

.method public static handleClientDestroyed(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->instance:Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->instance:Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;

    iget-object v0, v0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->client:Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 37
    sput-object p0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->instance:Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;

    :cond_0
    return-void
.end method


# virtual methods
.method public notifyPositionReached(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 53
    iget-object v2, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 54
    iget-object p1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 50
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 55
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method
