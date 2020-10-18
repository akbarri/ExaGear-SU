.class public Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;
.super Ljava/lang/Object;
.source "AnnotationDrivenRequestParser.java"


# instance fields
.field private final impl:Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;


# direct methods
.method public constructor <init>([Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;-><init>([Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;)V

    iput-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;->impl:Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;

    return-void
.end method


# virtual methods
.method public getRequestHandlerParameters(Ljava/lang/Object;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;IB)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;->impl:Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;

    new-instance v1, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    invoke-direct {v1, p3, p4, p6, p5}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;-><init>(Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;BI)V

    invoke-virtual {v0, p2, p1, v1}, Lcom/eltechs/axs/proto/input/annotations/impl/RequestStreamParser;->parse(Lcom/eltechs/axs/xserver/XServer;Ljava/lang/Object;Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
