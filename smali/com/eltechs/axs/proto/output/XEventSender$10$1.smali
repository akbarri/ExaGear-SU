.class Lcom/eltechs/axs/proto/output/XEventSender$10$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$10;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/ConfigureRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$10;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$10;Lcom/eltechs/axs/xserver/events/ConfigureRequest;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$10;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 202
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getSibling()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 207
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getX()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getY()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 209
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 210
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getHeight()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 211
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getBorderWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 212
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$10$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureRequest;->getParts()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
