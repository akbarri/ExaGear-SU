.class public Lcom/eltechs/axs/xconnectors/XResponse;
.super Ljava/lang/Object;
.source "XResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;
    }
.end annotation


# static fields
.field private static final RESP_CODE_ERROR:B = 0x0t

.field private static final RESP_CODE_SUCCESS:B = 0x1t

.field private static final SIMPLE_EVENT_LENGTH:I = 0x1c

.field private static final SIMPLE_REPLY_LENGTH:I = 0x18

.field private static final zero:[B


# instance fields
.field private final inResponseTo:Lcom/eltechs/axs/xconnectors/XRequest;

.field private final outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

.field private final requestSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 189
    new-array v0, v0, [B

    sput-object v0, Lcom/eltechs/axs/xconnectors/XResponse;->zero:[B

    return-void
.end method

.method public constructor <init>(ILcom/eltechs/axs/xconnectors/XOutputStream;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/eltechs/axs/xconnectors/XResponse;->inResponseTo:Lcom/eltechs/axs/xconnectors/XRequest;

    .line 59
    iput p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->requestSequenceNumber:I

    .line 60
    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XOutputStream;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->inResponseTo:Lcom/eltechs/axs/xconnectors/XRequest;

    .line 46
    invoke-virtual {p1}, Lcom/eltechs/axs/xconnectors/XRequest;->getSequenceNumber()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->requestSequenceNumber:I

    .line 47
    iput-object p2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .line 16
    sget-object v0, Lcom/eltechs/axs/xconnectors/XResponse;->zero:[B

    return-object v0
.end method

.method private varargs sendReply(ZBBI[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x18

    if-eqz p1, :cond_1

    .line 210
    invoke-static {p5}, Lcom/eltechs/axs/proto/output/PODWriter;->getOnWireLength(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v0, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    .line 217
    invoke-static {v1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculatePad(I)I

    move-result v0

    .line 218
    invoke-static {v1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result p4

    div-int/lit8 p4, p4, 0x4

    .line 222
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v1

    const/4 v2, 0x0

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v3, p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 225
    iget-object p2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {p2, p3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 226
    iget-object p2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    iget p3, p0, Lcom/eltechs/axs/xconnectors/XResponse;->requestSequenceNumber:I

    int-to-short p3, p3

    invoke-interface {p2, p3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 227
    iget-object p2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {p2, p4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-static {p1, p5}, Lcom/eltechs/axs/proto/output/PODWriter;->write(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/Object;)V

    .line 235
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    sget-object p3, Lcom/eltechs/axs/xconnectors/XResponse;->zero:[B

    invoke-interface {p1, p3, p2, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write([BII)V

    goto :goto_1

    .line 242
    :cond_2
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    sget-object p3, Lcom/eltechs/axs/xconnectors/XResponse;->zero:[B

    invoke-interface {p1, p3, p2, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write([BII)V

    .line 243
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-static {p1, p5}, Lcom/eltechs/axs/proto/output/PODWriter;->write(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v1, :cond_3

    .line 245
    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 222
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    .line 245
    :try_start_2
    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_5
    :goto_3
    throw p1
.end method


# virtual methods
.method public sendError(Lcom/eltechs/axs/proto/input/XProtocolError;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 284
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/XProtocolError;->getErrorCode()B

    move-result v4

    invoke-interface {v2, v4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 285
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    iget v4, p0, Lcom/eltechs/axs/xconnectors/XResponse;->requestSequenceNumber:I

    int-to-short v4, v4

    invoke-interface {v2, v4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 286
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/XProtocolError;->getData()I

    move-result p1

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 287
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->inResponseTo:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {v2}, Lcom/eltechs/axs/xconnectors/XRequest;->getMinorOpcode()S

    move-result v2

    invoke-interface {p1, v2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 288
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->inResponseTo:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {v2}, Lcom/eltechs/axs/xconnectors/XRequest;->getMajorOpcode()B

    move-result v2

    invoke-interface {p1, v2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 289
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    sget-object v2, Lcom/eltechs/axs/xconnectors/XResponse;->zero:[B

    const/16 v4, 0x15

    invoke-interface {p1, v2, v3, v4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 281
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 290
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

.method public sendEvent(BBLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Event codes must be other than RESP_CODE_SUCCESS and RESP_CODE_ERROR."

    .line 169
    invoke-static {v2, v3}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    const-string v1, "Event codes must be other than RESP_CODE_SUCCESS and RESP_CODE_ERROR."

    .line 170
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 175
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 176
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    iget p2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->requestSequenceNumber:I

    int-to-short p2, p2

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 178
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/16 p2, 0x1c

    new-instance v2, Lcom/eltechs/axs/xconnectors/XResponse$3;

    invoke-direct {v2, p0, p3}, Lcom/eltechs/axs/xconnectors/XResponse$3;-><init>(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    invoke-interface {p1, p2, v2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write(ILcom/eltechs/axs/xconnectors/BufferFiller;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 186
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 172
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    .line 186
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_4
    :goto_2
    throw p1
.end method

.method public sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 82
    iget-object v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v2, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 83
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    iget v2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->requestSequenceNumber:I

    int-to-short v2, v2

    invoke-interface {p1, v2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 84
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 86
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/16 v2, 0x18

    new-instance v3, Lcom/eltechs/axs/xconnectors/XResponse$1;

    invoke-direct {v3, p0, p2}, Lcom/eltechs/axs/xconnectors/XResponse$1;-><init>(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    invoke-interface {p1, v2, v3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write(ILcom/eltechs/axs/xconnectors/BufferFiller;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 79
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 94
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_2
    :goto_1
    throw p1
.end method

.method public varargs sendSimpleSuccessReply(B[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    .line 257
    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xconnectors/XResponse;->sendReply(ZBBI[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs sendSuccessReply(B[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {p2}, Lcom/eltechs/axs/proto/output/PODWriter;->getOnWireLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculateLengthInWords(I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p0

    move v4, p1

    move-object v6, p2

    .line 270
    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/xconnectors/XResponse;->sendReply(ZBBI[Ljava/lang/Object;)V

    return-void
.end method

.method public sendSuccessReplyWithPayload(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;ILcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-static {p3}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v1

    const/4 v2, 0x0

    .line 124
    :try_start_0
    iget-object v3, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 125
    iget-object v3, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v3, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    .line 126
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    iget v3, p0, Lcom/eltechs/axs/xconnectors/XResponse;->requestSequenceNumber:I

    int-to-short v3, v3

    invoke-interface {p1, v3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    .line 127
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-static {v0}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculateLengthInWords(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 129
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/16 v0, 0x18

    new-instance v3, Lcom/eltechs/axs/xconnectors/XResponse$2;

    invoke-direct {v3, p0, p2}, Lcom/eltechs/axs/xconnectors/XResponse$2;-><init>(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    invoke-interface {p1, v0, v3}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write(ILcom/eltechs/axs/xconnectors/BufferFiller;)V

    .line 141
    iget-object p1, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {p1, p3, p4}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write(ILcom/eltechs/axs/xconnectors/BufferFiller;)V

    .line 143
    invoke-static {p3}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculatePad(I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p2, p0, Lcom/eltechs/axs/xconnectors/XResponse;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    sget-object p3, Lcom/eltechs/axs/xconnectors/XResponse;->zero:[B

    const/4 p4, 0x0

    invoke-interface {p2, p3, p4, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 148
    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 122
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    .line 148
    :try_start_2
    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    :cond_3
    :goto_1
    throw p1
.end method
