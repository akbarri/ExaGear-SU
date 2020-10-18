.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/EventParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;
.source "EventParameterReader.java"


# static fields
.field private static final parsersRegistry:Lcom/eltechs/axs/proto/input/EventParsersRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/eltechs/axs/proto/input/annotations/impl/EventBuilders;

    invoke-static {v0}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenEventParserConfigurer;->createParserRegistry(Ljava/lang/Class;)Lcom/eltechs/axs/proto/input/EventParsersRegistry;

    move-result-object v0

    sput-object v0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EventParameterReader;->parsersRegistry:Lcom/eltechs/axs/proto/input/EventParsersRegistry;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ParameterReaderBase;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;)V

    return-void
.end method


# virtual methods
.method protected readParameterImpl(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EventParameterReader;->dataReader:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;

    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;->readByte(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)B

    move-result v0

    invoke-static {v0}, Lcom/eltechs/axs/helpers/ArithHelpers;->extendAsUnsigned(B)I

    move-result v0

    const/16 v1, 0x22

    if-gt v0, v1, :cond_2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    sget-object v1, Lcom/eltechs/axs/proto/input/parameterReaders/impl/EventParameterReader;->parsersRegistry:Lcom/eltechs/axs/proto/input/EventParsersRegistry;

    invoke-virtual {v1, v0}, Lcom/eltechs/axs/proto/input/EventParsersRegistry;->getParser(I)Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    const-string v5, "Event parser for event code %d not found."

    .line 37
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 39
    invoke-virtual {v1, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->parse(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Lcom/eltechs/axs/xserver/events/Event;

    move-result-object p1

    return-object p1

    .line 34
    :cond_2
    :goto_1
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadValue;

    invoke-direct {p1, v0}, Lcom/eltechs/axs/proto/input/errors/BadValue;-><init>(I)V

    throw p1
.end method
