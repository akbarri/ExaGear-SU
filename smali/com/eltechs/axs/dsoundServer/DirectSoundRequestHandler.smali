.class public Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;
.super Ljava/lang/Object;
.source "DirectSoundRequestHandler.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/xconnectors/RequestHandler<",
        "Lcom/eltechs/axs/dsoundServer/DirectSoundClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final SIZE_OF_ATTACH_REQ:I = 0x4

.field private static final SIZE_OF_INIT_NOTIFY_REQ:I = 0x0

.field private static final SIZE_OF_INT:I = 0x4

.field private static final SIZE_OF_PLAY_REQ:I = 0x4

.field private static final SIZE_OF_RECALC_VOLPAN_REQ:I = 0x8

.field private static final SIZE_OF_SET_CURRENT_POSITION_REQ:I = 0x4

.field private static final SIZE_OF_STOP_REQ:I


# instance fields
.field private final suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method private attach(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 181
    :cond_0
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->attach(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 186
    :cond_1
    invoke-interface {p3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 188
    :try_start_0
    invoke-interface {p3, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 189
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 190
    :cond_2
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    .line 186
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 189
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_4
    :goto_1
    throw p3
.end method

.method private initGlobalNotifier(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-static {p1, p2}, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->createInstance(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)V

    .line 288
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p1

    const/4 v0, 0x0

    .line 290
    :try_start_0
    invoke-interface {p2, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 291
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 292
    :cond_0
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p2

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 288
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 291
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_2
    :goto_1
    throw p2
.end method

.method private play(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const-class v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    invoke-static {v0, p2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->create(Ljava/lang/Class;I)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p2

    if-nez p2, :cond_0

    .line 200
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 203
    :cond_0
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->play(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    .line 205
    invoke-interface {p3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 207
    :try_start_0
    invoke-interface {p3, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 208
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 209
    :cond_1
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    .line 205
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 208
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_3
    :goto_1
    throw p3
.end method

.method private recalcVolpan(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;IILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->recalcVolpan(II)V

    .line 231
    invoke-interface {p4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p1

    const/4 p2, 0x0

    .line 233
    :try_start_0
    invoke-interface {p4, p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 234
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 235
    :cond_0
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p2

    const/4 p3, 0x0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 231
    :try_start_1
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 234
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p3, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_2
    :goto_1
    throw p2
.end method

.method private setCurrentPosition(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p1, p2}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->setCurrentPosition(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 244
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 247
    :cond_0
    invoke-interface {p3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 249
    :try_start_0
    invoke-interface {p3, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 250
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 251
    :cond_1
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p3

    goto :goto_0

    :catch_0
    move-exception p2

    .line 247
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 250
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_3
    :goto_1
    throw p3
.end method

.method private setNotificationPositions(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 261
    new-array v2, p2, [I

    .line 262
    new-array v3, p2, [I

    move v4, v0

    :goto_0
    if-ge v4, p2, :cond_0

    .line 266
    invoke-interface {p3}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v5

    aput v5, v2, v4

    .line 267
    invoke-interface {p3}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p1, v2, v3}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->setNotificationPositions([I[I)V

    goto :goto_1

    .line 273
    :cond_1
    invoke-virtual {p1, v1, v1}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->setNotificationPositions([I[I)V

    .line 276
    :goto_1
    invoke-interface {p4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p1

    .line 278
    :try_start_0
    invoke-interface {p4, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 279
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 280
    :cond_2
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception v1

    .line 276
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    .line 279
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_4
    :goto_3
    throw p2
.end method

.method private stop(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->stop()V

    .line 217
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p1

    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-interface {p2, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    .line 221
    :cond_0
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :catchall_0
    move-exception p2

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :goto_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 220
    :try_start_2
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_2
    :goto_1
    throw p2
.end method


# virtual methods
.method public handleRequest(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->handleRequestImpl(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public bridge synthetic handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->handleRequest(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1
.end method

.method public handleRequestImpl(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 79
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 82
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    .line 83
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v2

    .line 85
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 87
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :cond_1
    const/16 v3, 0xff

    if-ne v0, v3, :cond_3

    if-eqz v2, :cond_2

    .line 94
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 97
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->initGlobalNotifier(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v3, 0x4

    if-nez v0, :cond_5

    if-eq v2, v3, :cond_4

    .line 104
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 107
    :cond_4
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p2

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->attach(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    .line 111
    :cond_5
    invoke-virtual {p1}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->isAttached()Z

    move-result v4

    if-nez v4, :cond_6

    .line 113
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 168
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 136
    :pswitch_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    .line 137
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p2

    if-eq v2, v1, :cond_7

    .line 141
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 144
    :cond_7
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->recalcVolpan(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;IILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    .line 157
    :pswitch_1
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    if-eq v2, v1, :cond_8

    .line 161
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 164
    :cond_8
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->setNotificationPositions(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    :pswitch_2
    if-eq v2, v3, :cond_9

    .line 150
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 153
    :cond_9
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->setCurrentPosition(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    :pswitch_3
    if-eqz v2, :cond_a

    .line 129
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 132
    :cond_a
    invoke-direct {p0, p1, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->stop(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    :pswitch_4
    if-eq v2, v3, :cond_b

    .line 121
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 124
    :cond_b
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->play(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;ILcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resumeRequestProcessing()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    const-string v1, "resumeRequestProcessing() must be called by the thread that called suspendRequestProcessing()"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    :cond_0
    return-void
.end method

.method public suspendRequestProcessing()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "suspendRequestProcessing() must not be called recursively."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundRequestHandler;->suspendLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    return-void
.end method
