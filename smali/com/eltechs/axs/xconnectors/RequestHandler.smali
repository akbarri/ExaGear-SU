.class public interface abstract Lcom/eltechs/axs/xconnectors/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


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
.method public abstract handleRequest(Ljava/lang/Object;Lcom/eltechs/axs/xconnectors/XInputStream;Lcom/eltechs/axs/xconnectors/XOutputStream;)Lcom/eltechs/axs/proto/input/ProcessingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContext;",
            "Lcom/eltechs/axs/xconnectors/XInputStream;",
            "Lcom/eltechs/axs/xconnectors/XOutputStream;",
            ")",
            "Lcom/eltechs/axs/proto/input/ProcessingResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
