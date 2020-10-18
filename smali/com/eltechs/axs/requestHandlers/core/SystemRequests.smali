.class public Lcom/eltechs/axs/requestHandlers/core/SystemRequests;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "SystemRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;
    }
.end annotation


# instance fields
.field private final DEFAULT_SCREEN_SAVER_INTERVAL_SEC:S

.field private final DEFAULT_SCREEN_SAVER_TIME_SEC:S


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 p1, 0x258

    .line 22
    iput-short p1, p0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests;->DEFAULT_SCREEN_SAVER_TIME_SEC:S

    .line 23
    iput-short p1, p0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests;->DEFAULT_SCREEN_SAVER_INTERVAL_SEC:S

    return-void
.end method


# virtual methods
.method public Bell(B)V
    .locals 0
    .param p1    # B
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x68
    .end annotation

    return-void
.end method

.method public GetScreenSaver(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 2
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x6c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$1;-><init>(Lcom/eltechs/axs/requestHandlers/core/SystemRequests;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/eltechs/axs/xconnectors/XResponse;->sendSimpleSuccessReply(BLcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;)V

    return-void
.end method

.method public NoOperation(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x7f
    .end annotation

    return-void
.end method

.method public SetScreenSaver(SSLcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;S)V
    .locals 0
    .param p1    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p2    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p3    # Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p4    # Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .param p5    # S
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x6b
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
