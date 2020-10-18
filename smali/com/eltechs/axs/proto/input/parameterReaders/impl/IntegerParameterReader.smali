.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;
.source "IntegerParameterReader.java"


# instance fields
.field private final newXId:Z


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 27
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;IZ)V

    .line 29
    const-class p1, Lcom/eltechs/axs/proto/input/annotations/NewXId;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/proto/input/annotations/NewXId;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 30
    :cond_0
    iput-boolean v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;->newXId:Z

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

    .line 36
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;->getUnderlyingValue(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)I

    move-result v0

    .line 37
    iget-boolean v1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/IntegerParameterReader;->newXId:Z

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getConnectionContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/client/XClient;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->getIdInterval()Lcom/eltechs/axs/xserver/IdInterval;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/IdInterval;->isInInterval(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;

    invoke-direct {p1, v0}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;-><init>(I)V

    throw p1

    .line 44
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
