.class public Lcom/eltechs/axs/proto/input/errors/BadValue;
.super Lcom/eltechs/axs/proto/input/XProtocolError;
.source "BadValue.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/eltechs/axs/proto/input/XProtocolError;-><init>(BI)V

    return-void
.end method


# virtual methods
.method public getBadValue()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/errors/BadValue;->getData()I

    move-result v0

    return v0
.end method
