.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/RemainingRequestDataAsByteBufferParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;
.source "RemainingRequestDataAsByteBufferParameterReader.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V

    return-void
.end method


# virtual methods
.method protected readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object p1

    .line 23
    iget v0, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->remainingBytesCount:I

    const/4 v1, 0x0

    .line 24
    iput v1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->remainingBytesCount:I

    .line 25
    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xconnectors/XRequest;->readAsByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
