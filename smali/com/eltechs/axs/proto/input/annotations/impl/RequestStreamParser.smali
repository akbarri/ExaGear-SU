.class public Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;
.super Ljava/lang/Object;
.source "RequestStreamParser.java"


# instance fields
.field private final parameterReaders:[Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;


# direct methods
.method constructor <init>([Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;->parameterReaders:[Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    return-void
.end method


# virtual methods
.method public parse(Lcom/eltechs/axs/xserver/XServer;Ljava/lang/Object;Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;

    iget-object v1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;->parameterReaders:[Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    const/4 v2, 0x0

    array-length v1, v1

    invoke-direct {v0, p2, p1, p3, v1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;-><init>(Ljava/lang/Object;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    .line 39
    iget-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;->parameterReaders:[Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    array-length p2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    aget-object p3, p1, v2

    .line 41
    invoke-interface {p3, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;->readParameter(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getCollectedParameters()[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
