.class public Lcom/eltechs/axs/alsaServer/ALSARequestHandler;
.super Ljava/lang/Object;
.source "ALSARequestHandler.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/RequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/eltechs/axs/xconnectors/RequestHandler<",
        "Lcom/eltechs/axs/alsaServer/ALSAClient;",
        ">;"
    }
.end annotation


# static fields
.field public static final HEADER_SIZE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/eltechs/axs/alsaServer/ALSAClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 28
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 31
    :cond_0
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v0

    .line 32
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v1

    .line 34
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAvailableBytesCount()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 36
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->INCOMPLETE_BUFFER:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :cond_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 66
    :pswitch_0
    invoke-virtual {p1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->drain()V

    goto/16 :goto_4

    .line 69
    :pswitch_1
    invoke-interface {p3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object p2

    const/4 v0, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->pointer()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_7

    .line 72
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 69
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 72
    :try_start_2
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_3
    :goto_1
    throw p1

    .line 63
    :pswitch_2
    invoke-virtual {p1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->stop()V

    goto :goto_4

    .line 59
    :pswitch_3
    invoke-interface {p2, v1}, Lcom/eltechs/axs/xconnectors/XInputStream;->getAsByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2, v1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->writeDataToTrack(Ljava/nio/ByteBuffer;I)V

    goto :goto_4

    .line 56
    :pswitch_4
    invoke-virtual {p1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->start()V

    goto :goto_4

    .line 46
    :pswitch_5
    invoke-virtual {p1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->reset()V

    .line 47
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/eltechs/axs/alsaServer/ALSAClient;->setFormat(I)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    move p3, v1

    goto :goto_2

    :cond_4
    move p3, v0

    .line 48
    :goto_2
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/eltechs/axs/alsaServer/ALSAClient;->setChannels(I)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p3, :cond_5

    move p3, v1

    goto :goto_3

    :cond_5
    move p3, v0

    .line 49
    :goto_3
    invoke-interface {p2}, Lcom/eltechs/axs/xconnectors/XInputStream;->getInt()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/alsaServer/ALSAClient;->setRate(I)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    move v0, v1

    :cond_6
    if-nez v0, :cond_7

    .line 52
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED_KILL_CONNECTION:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    .line 42
    :pswitch_6
    invoke-virtual {p1}, Lcom/eltechs/axs/alsaServer/ALSAClient;->reset()V

    .line 76
    :cond_7
    :goto_4
    sget-object p1, Lcom/eltechs/axs/proto/input/ProcessingResult;->PROCESSED:Lcom/eltechs/axs/proto/input/ProcessingResult;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/eltechs/axs/alsaServer/ALSAClient;

    invoke-virtual {p0, p1, p2, p3}, Lcom/eltechs/axs/alsaServer/ALSARequestHandler;->handleRequest(Lcom/eltechs/axs/alsaServer/ALSAClient;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;

    move-result-object p1

    return-object p1
.end method
