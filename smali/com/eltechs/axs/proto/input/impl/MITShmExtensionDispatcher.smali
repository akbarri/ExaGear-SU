.class public Lcom/eltechs/axs/proto/input/impl/MITShmExtensionDispatcher;
.super Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;
.source "MITShmExtensionDispatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "MIT-SHM"

    const/16 v1, -0x74

    const/16 v2, 0x40

    const/16 v3, -0x80

    .line 17
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/eltechs/axs/proto/input/TrivialExtensionDispatcher;-><init>(BLjava/lang/String;BB)V

    return-void
.end method
