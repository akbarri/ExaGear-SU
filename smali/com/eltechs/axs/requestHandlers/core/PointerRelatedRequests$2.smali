.class Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$2;
.super Ljava/lang/Object;
.source "PointerRelatedRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;->GetPointerControl(Lcom/eltechs/axs/xconnectors/XResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests$2;->this$0:Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
