.class public Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest;
.super Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.source "ForceScreenSaverRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    return-void
.end method


# virtual methods
.method public ForceScreenSaver(Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;)V
    .locals 0
    .param p1    # Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest$Mode;
        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/OOBParam;
        .end annotation

        .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestParam;
        .end annotation
    .end param
    .annotation runtime Lcom/eltechs/axs/proto/input/annotations/RequestHandler;
        opcode = 0x73
    .end annotation

    return-void
.end method
