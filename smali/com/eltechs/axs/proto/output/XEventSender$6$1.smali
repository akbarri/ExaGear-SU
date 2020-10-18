.class Lcom/eltechs/axs/proto/output/XEventSender$6$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$6;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/Expose;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$6;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/Expose;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$6;Lcom/eltechs/axs/xserver/events/Expose;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$6$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$6;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$6$1;->val$event:Lcom/eltechs/axs/xserver/events/Expose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$6$1;->val$event:Lcom/eltechs/axs/xserver/events/Expose;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/Expose;->getWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 127
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$6$1;->val$event:Lcom/eltechs/axs/xserver/events/Expose;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/Expose;->getX()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$6$1;->val$event:Lcom/eltechs/axs/xserver/events/Expose;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/Expose;->getY()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 129
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$6$1;->val$event:Lcom/eltechs/axs/xserver/events/Expose;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/Expose;->getWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 130
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$6$1;->val$event:Lcom/eltechs/axs/xserver/events/Expose;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/Expose;->getHeight()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
