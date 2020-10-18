.class public Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;
.super Ljava/lang/Object;
.source "RequestDataRetrievalContext.java"


# instance fields
.field public final oobParameter:B

.field public remainingBytesCount:I

.field public final req:Lcom/eltechs/axs/xconnectors/XRequest;

.field public final resp:Lcom/eltechs/axs/xconnectors/XResponse;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;BI)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->req:Lcom/eltechs/axs/xconnectors/XRequest;

    .line 37
    iput-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->resp:Lcom/eltechs/axs/xconnectors/XResponse;

    .line 39
    iput-byte p3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->oobParameter:B

    .line 40
    iput p4, p0, Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;->remainingBytesCount:I

    return-void
.end method
