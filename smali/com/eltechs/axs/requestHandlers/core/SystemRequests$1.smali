.class Lcom/eltechs/axs/requestHandlers/core/SystemRequests$1;
.super Ljava/lang/Object;
.source "SystemRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/SystemRequests;->GetScreenSaver(Lcom/eltechs/axs/xconnectors/XResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/SystemRequests;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/SystemRequests;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/core/SystemRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/16 v0, 0x258

    .line 60
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 62
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->YES:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    invoke-virtual {v0}, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    sget-object v0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->YES:Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;

    invoke-virtual {v0}, Lcom/eltechs/axs/requestHandlers/core/SystemRequests$NoYesDefault;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
