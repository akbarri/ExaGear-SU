.class public abstract Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;
.super Ljava/lang/Object;
.source "ParameterReaderBase.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;


# instance fields
.field protected final dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;


# direct methods
.method protected constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    return-void
.end method


# virtual methods
.method public final readParameter(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;->readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->parameterCollected(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation
.end method
