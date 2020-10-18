.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/BooleanParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;
.source "BooleanParameterReader.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;IZ)V

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

    .line 27
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/BooleanParameterReader;->getUnderlyingValue(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
