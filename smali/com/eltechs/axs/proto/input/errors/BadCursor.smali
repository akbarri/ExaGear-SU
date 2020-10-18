.class public Lcom/eltechs/axs/proto/input/errors/BadCursor;
.super Lcom/eltechs/axs/proto/input/XProtocolError;
.source "BadCursor.java"


# direct methods
.method public constructor <init>(I)V
    .locals 4

    const-string v0, "Bad cursor id %d."

    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1, p1, v0}, Lcom/eltechs/axs/proto/input/XProtocolError;-><init>(BILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/eltechs/axs/proto/input/errors/BadCursor;->getData()I

    move-result v0

    return v0
.end method
