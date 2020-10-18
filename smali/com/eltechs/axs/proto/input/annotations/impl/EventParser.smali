.class public Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;
.super Ljava/lang/Object;
.source "EventParser.java"


# instance fields
.field private final impl:Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;

.field private final parseMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>([Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;-><init>([Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;)V

    iput-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->impl:Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;

    .line 38
    iput-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->parseMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private getEventParameters(Ljava/lang/Object;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->impl:Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;

    new-instance v1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-direct {v1, p3, p4, v2, v3}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;-><init>(Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;BI)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;->parse(Lcom/eltechs/axs/xserver/XServer;Ljava/lang/Object;Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public parse(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)Lcom/eltechs/axs/xserver/events/Event;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getConnectionContext()Ljava/lang/Object;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object v2

    iget-object v2, v2, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    .line 53
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    move-result-object p1

    iget-object p1, p1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->resp:Lcom/eltechs/axs/xconnectors/XResponse;

    .line 50
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->getEventParameters(Ljava/lang/Object;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    :try_start_0
    iget-object v3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->parseMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/events/Event;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Event parser %s must be public"

    .line 63
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->parseMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "Event parser %s must not throw exceptions"

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/EventParser;->parseMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 65
    :goto_0
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    return-object v1
.end method
