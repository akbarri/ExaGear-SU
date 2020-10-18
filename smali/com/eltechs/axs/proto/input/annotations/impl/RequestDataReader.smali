.class public interface abstract Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;
.super Ljava/lang/Object;
.source "RequestDataReader.java"


# virtual methods
.method public abstract read(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation
.end method

.method public abstract readByte(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation
.end method

.method public abstract readInt(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation
.end method

.method public abstract readShort(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;)S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation
.end method

.method public abstract skip(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataRetrievalContext;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation
.end method
