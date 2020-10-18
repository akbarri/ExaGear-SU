.class Lcom/eltechs/axs/proto/output/XEventSender$11$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$11;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/InputDeviceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$11;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$11;Lcom/eltechs/axs/xserver/events/InputDeviceEvent;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$11;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getChild()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getTimestamp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 229
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getRoot()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 230
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getEvent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 232
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getRootX()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 233
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getRootY()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 234
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getEventX()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 235
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getEventY()S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 236
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$11$1;->val$event:Lcom/eltechs/axs/xserver/events/InputDeviceEvent;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->getState()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
