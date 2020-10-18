.class Lcom/eltechs/axs/proto/output/XEventSender$9$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$9;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/ConfigureNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$9;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$9;Lcom/eltechs/axs/xserver/events/ConfigureNotify;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$9;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getEvent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getAboveSibling()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 182
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getX()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 183
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getY()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 185
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getHeight()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 186
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->getBorderWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 187
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$9$1;->val$event:Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ConfigureNotify;->isOverrideRedirect()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
