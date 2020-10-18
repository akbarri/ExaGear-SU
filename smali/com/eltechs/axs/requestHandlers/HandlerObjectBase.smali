.class public abstract Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;
.super Ljava/lang/Object;
.source "HandlerObjectBase.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/annotations/BoundToXServer;


# instance fields
.field protected final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method protected constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-void
.end method


# virtual methods
.method public final getXServer()Lcom/eltechs/axs/xserver/XServer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/HandlerObjectBase;->xServer:Lcom/eltechs/axs/xserver/XServer;

    return-object v0
.end method
