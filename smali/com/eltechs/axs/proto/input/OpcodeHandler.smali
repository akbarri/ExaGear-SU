.class public interface abstract Lcom/eltechs/axs/proto/input/OpcodeHandler;
.super Ljava/lang/Object;
.source "OpcodeHandler.java"


# virtual methods
.method public abstract handleRequest(Lcom/eltechs/axs/xserver/client/XClient;IBLcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
