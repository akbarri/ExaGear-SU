.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/ResponseParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;
.source "ResponseParameterReader.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V

    return-void
.end method


# virtual methods
.method protected readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object p1

    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->resp:Lcom/eltechs/axs/xconnectors/XResponse;

    return-object p1
.end method
