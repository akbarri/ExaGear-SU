.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;
.source "String8ParameterReader.java"


# static fields
.field private static final LATIN1_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field private final lengthParameterIdx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "latin1"

    .line 21
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V

    .line 36
    iput p2, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;->lengthParameterIdx:I

    return-void
.end method


# virtual methods
.method protected readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 42
    iget v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;->lengthParameterIdx:I

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getCollectedParameter(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->read(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)[B

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object p1

    invoke-static {v0}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculatePad(I)I

    move-result v0

    invoke-interface {v2, p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->skip(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V

    .line 48
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/String8ParameterReader;->LATIN1_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method
