.class public Lcom/eltechs/axs/proto/input/errors/BadIdChoice;
.super Lcom/eltechs/axs/proto/input/XProtocolError;
.source "BadIdChoice.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0xe

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/eltechs/axs/proto/input/XProtocolError;-><init>(BI)V

    return-void
.end method


# virtual methods
.method public getBadId()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/errors/BadIdChoice;->getData()I

    move-result v0

    return v0
.end method
