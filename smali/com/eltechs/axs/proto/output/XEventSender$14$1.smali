.class Lcom/eltechs/axs/proto/output/XEventSender$14$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$14;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/SelectionRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$14;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$14;Lcom/eltechs/axs/xserver/events/SelectionRequest;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$14;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/SelectionRequest;->getProperty()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionRequest;->getTimestamp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 305
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionRequest;->getOwner()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 306
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionRequest;->getRequestor()Lcom/eltechs/axs/xserver/Window;

    move-result-object v1

    invoke-interface {v1}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 307
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionRequest;->getSelection()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 308
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender$14$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionRequest;

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/events/SelectionRequest;->getTarget()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
