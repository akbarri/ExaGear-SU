.class public abstract Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;
.source "ReferenceToObjectParameterReader.java"


# instance fields
.field private final nullable:Z

.field private final specialNullValue:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V

    .line 29
    const-class p1, Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->nullable:Z

    .line 33
    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/SpecialNullValue;->value()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->specialNullValue:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->nullable:Z

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->specialNullValue:I

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract getReference(Lcom/eltechs/axs/xserver/XServer;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation
.end method

.method protected final readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readInt(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)I

    move-result v0

    .line 45
    iget-boolean v1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->nullable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->specialNullValue:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;->getReference(Lcom/eltechs/axs/xserver/XServer;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
