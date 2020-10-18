.class public Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;
.super Ljava/lang/Object;
.source "OpcodeHandlersRegistry.java"


# instance fields
.field private opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Lcom/eltechs/axs/proto/input/OpcodeHandler;

    iput-object v0, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    return-void
.end method


# virtual methods
.method public getHandler(I)Lcom/eltechs/axs/proto/input/OpcodeHandler;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public installRequestHandler(ILcom/eltechs/axs/proto/input/OpcodeHandler;)V
    .locals 5

    .line 26
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    const/4 v1, 0x0

    array-length v0, v0

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 28
    new-array v0, v0, [Lcom/eltechs/axs/proto/input/OpcodeHandler;

    .line 29
    iget-object v2, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    iget-object v3, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    array-length v3, v3

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iput-object v0, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    aget-object v0, v0, p1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "A handler for the opcode %d is already registered."

    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/OpcodeHandlersRegistry;->opcodeHandlers:[Lcom/eltechs/axs/proto/input/OpcodeHandler;

    aput-object p2, v0, p1

    return-void
.end method
