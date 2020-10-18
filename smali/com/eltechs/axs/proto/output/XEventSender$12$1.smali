.class Lcom/eltechs/axs/proto/output/XEventSender$12$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$12;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/PointerWindowEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$12;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$12;Lcom/eltechs/axs/xserver/events/PointerWindowEvent;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$12;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getChild()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getTimestamp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 260
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getRoot()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 261
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getEvent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 263
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getRootX()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 264
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getRootY()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 265
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getEventX()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 266
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getEventY()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 267
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getState()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 268
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getMode()Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 269
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$12$1;->val$event:Lcom/eltechs/axs/xserver/events/PointerWindowEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->getSameScreenAndFocus()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
