.class public abstract Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;
.source "PrimitiveTypeParameterReader.java"


# instance fields
.field private final isZXT:Z

.field private final naturalWidth:I

.field private final width:I


# direct methods
.method protected constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;IZ)V
    .locals 3

    .line 42
    invoke-direct {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V

    .line 44
    iput p3, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    .line 46
    const-class p1, Lcom/eltechs/axs/proto/input/annotations/Width;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/proto/input/annotations/Width;

    if-nez p1, :cond_0

    move v0, p3

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/Width;->value()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    .line 49
    const-class v0, Lcom/eltechs/axs/proto/input/annotations/Signed;

    invoke-virtual {p2, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/proto/input/annotations/Signed;

    .line 50
    const-class v1, Lcom/eltechs/axs/proto/input/annotations/Unsigned;

    invoke-virtual {p2, v1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/proto/input/annotations/Unsigned;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 51
    invoke-interface {p1}, Lcom/eltechs/axs/proto/input/annotations/Width;->value()I

    move-result p1

    if-le p3, p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-nez p4, :cond_4

    if-eqz p1, :cond_4

    if-nez v0, :cond_2

    if-nez p2, :cond_4

    :cond_2
    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move p3, v1

    goto :goto_3

    :cond_4
    :goto_2
    move p3, v2

    :goto_3
    const-string v0, "Primitive type with extension must be specified with extension type and extension type must be specified only once."

    .line 53
    invoke-static {p3, v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    if-nez p4, :cond_6

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    move p1, v1

    goto :goto_5

    :cond_6
    :goto_4
    move p1, v2

    .line 56
    :goto_5
    iput-boolean p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->isZXT:Z

    .line 58
    iget p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    const/4 p2, 0x4

    const/4 p3, 0x2

    if-eq p1, v2, :cond_8

    iget p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    if-eq p1, p3, :cond_8

    iget p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    if-ne p1, p2, :cond_7

    goto :goto_6

    :cond_7
    move p1, v1

    goto :goto_7

    :cond_8
    :goto_6
    move p1, v2

    :goto_7
    const-string p4, "Primitive types can only be 1, 2 or 4 bytes wide."

    invoke-static {p1, p4}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 59
    iget p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    if-eq p1, v2, :cond_9

    iget p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    if-eq p1, p3, :cond_9

    iget p1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    if-ne p1, p2, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    const-string p1, "Primitive types can only be 1, 2 or 4 bytes wide."

    invoke-static {v1, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final getUnderlyingValue(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object p1

    .line 75
    iget v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    iget v1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-gt v0, v1, :cond_2

    .line 77
    iget v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    if-ne v0, v3, :cond_0

    .line 79
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readByte(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)B

    move-result p1

    .line 80
    iget-boolean v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->isZXT:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result p1

    goto :goto_1

    .line 81
    :cond_0
    iget v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    if-ne v0, v2, :cond_1

    .line 83
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readShort(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)S

    move-result p1

    .line 84
    iget-boolean v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->isZXT:Z

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(S)I

    move-result p1

    goto :goto_1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readInt(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)I

    move-result p1

    goto :goto_1

    .line 91
    :cond_2
    iget v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    if-ne v0, v3, :cond_3

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readByte(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)B

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v0

    goto :goto_0

    .line 94
    :cond_3
    iget v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    if-ne v0, v2, :cond_4

    .line 96
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readShort(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)S

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(S)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_4
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readInt(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)I

    move-result v0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    iget v2, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->width:I

    iget v3, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/PrimitiveTypeParameterReader;->naturalWidth:I

    sub-int/2addr v2, v3

    invoke-interface {v1, p1, v2}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->skip(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    move p1, v0

    :cond_5
    :goto_1
    return p1
.end method
