.class public interface abstract Lcom/eltechs/axs/proto/input/ConnectionHandler;
.super Ljava/lang/Object;
.source "ConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Context:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handleConnectionShutdown(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContext;)V"
        }
    .end annotation
.end method

.method public abstract handleNewConnection(Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xconnectors/XInputStream;",
            "Lcom/eltechs/axs/xconnectors/XOutputStream;",
            ")TContext;"
        }
    .end annotation
.end method
