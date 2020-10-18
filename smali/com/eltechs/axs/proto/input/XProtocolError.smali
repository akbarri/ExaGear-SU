.class public abstract Lcom/eltechs/axs/proto/input/XProtocolError;
.super Ljava/lang/Exception;
.source "XProtocolError.java"


# instance fields
.field private final code:B

.field private final data:I


# direct methods
.method protected constructor <init>(BI)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 24
    iput-byte p1, p0, Lcom/eltechs/axs/proto/input/XProtocolError;->code:B

    .line 25
    iput p2, p0, Lcom/eltechs/axs/proto/input/XProtocolError;->data:I

    return-void
.end method

.method protected constructor <init>(BILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 40
    iput-byte p1, p0, Lcom/eltechs/axs/proto/input/XProtocolError;->code:B

    .line 41
    iput p2, p0, Lcom/eltechs/axs/proto/input/XProtocolError;->data:I

    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/eltechs/axs/proto/input/XProtocolError;->data:I

    return v0
.end method

.method public getErrorCode()B
    .locals 1

    .line 51
    iget-byte v0, p0, Lcom/eltechs/axs/proto/input/XProtocolError;->code:B

    return v0
.end method
