.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/ByteParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;
.source "ByteParameterReader.java"


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
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ByteParameterReader;->getUnderlyingValue(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)I

    move-result p1

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
