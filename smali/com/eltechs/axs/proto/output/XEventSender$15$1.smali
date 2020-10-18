.class Lcom/eltechs/axs/proto/output/XEventSender$15$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$15;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/SelectionNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$15;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/SelectionNotify;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$15;Lcom/eltechs/axs/xserver/events/SelectionNotify;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$15$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$15;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$15$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$15$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/SelectionNotify;->getProperty()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$15$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionNotify;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionNotify;->getTimestamp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 326
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$15$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionNotify;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionNotify;->getRequestor()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 327
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$15$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionNotify;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionNotify;->getSelection()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 328
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$15$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionNotify;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionNotify;->getTarget()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
