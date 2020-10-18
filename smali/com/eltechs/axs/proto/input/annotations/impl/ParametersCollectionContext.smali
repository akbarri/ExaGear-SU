.class public Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;
.super Ljava/lang/Object;
.source "ParametersCollectionContext.java"


# instance fields
.field private final collectedParameters:[Ljava/lang/Object;

.field private collectedParametersCount:I

.field private final connectionContext:Ljava/lang/Object;

.field private final dataRetrievalContext:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->connectionContext:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 42
    iput-object p3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->dataRetrievalContext:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    .line 43
    new-array p1, p4, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->collectedParameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getCollectedParameter(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->collectedParametersCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "A request parser has made a forward reference"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->collectedParameters:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCollectedParameters()[Ljava/lang/Object;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->collectedParameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getConnectionContext()Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->connectionContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataRetrievalContext()Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->dataRetrievalContext:Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;

    return-object v0
.end method

.method public getXServer()Lcom/eltechs/axs/xserver/XServer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-object v0
.end method

.method public parameterCollected(Ljava/lang/Object;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->collectedParameters:[Ljava/lang/Object;

    iget v1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->collectedParametersCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->collectedParametersCount:I

    aput-object p1, v0, v1

    return-void
.end method
