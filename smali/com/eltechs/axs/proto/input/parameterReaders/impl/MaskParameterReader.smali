.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;
.source "MaskParameterReader.java"


# instance fields
.field private final flagsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 29
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;IZ)V

    .line 31
    invoke-virtual {p2}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->getFlagsClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;->flagsClass:Ljava/lang/Class;

    .line 32
    iget-object p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;->flagsClass:Ljava/lang/Class;

    const-string v1, "Parameter %d of the request handler method %s has type Mask; Mask must be parametrised with the type of the underlying flags enum."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getIndex()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-interface {p3}, Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;->getHandlerMethodName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    .line 32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;->getUnderlyingValue(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)I

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/MaskParameterReader;->flagsClass:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->create(Ljava/lang/Class;I)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p1

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadRequest;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadRequest;-><init>()V

    throw p1

    :cond_0
    return-object p1
.end method
