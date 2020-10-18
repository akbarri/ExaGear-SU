.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;
.source "EnumParameterReader.java"


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;IZ)V

    .line 26
    const-class p1, Ljava/lang/Enum;

    invoke-virtual {p2}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 27
    invoke-virtual {p2}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;->enumClass:Ljava/lang/Class;

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

    .line 33
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;->getUnderlyingValue(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)I

    move-result p1

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EnumParameterReader;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    if-ltz p1, :cond_1

    .line 36
    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    .line 38
    :cond_1
    :goto_0
    new-instance v0, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw v0
.end method
