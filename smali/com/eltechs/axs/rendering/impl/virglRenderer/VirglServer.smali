.class public Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglServer;
.super Ljava/lang/Object;
.source "VirglServer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "virgl-server"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native startServer(Ljava/lang/String;)V
.end method

.method public native stopServer()V
.end method
