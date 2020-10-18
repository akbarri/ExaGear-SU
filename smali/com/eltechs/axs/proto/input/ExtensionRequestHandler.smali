.class public interface abstract Lcom/eltechs/axs/proto/input/ExtensionRequestHandler;
.super Ljava/lang/Object;
.source "ExtensionRequestHandler.java"


# virtual methods
.method public abstract getAssignedMajorOpcode()B
.end method

.method public abstract getFirstAssignedErrorId()B
.end method

.method public abstract getFirstAssignedEventId()B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract handleRequest(Lcom/eltechs/axs/xserver/client/XClient;BBILcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
