.class Lcom/eltechs/axs/proto/output/XEventSender$13$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$13;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/SelectionClear;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$13;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/SelectionClear;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$13;Lcom/eltechs/axs/xserver/events/SelectionClear;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$13$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$13;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$13$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$13$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionClear;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/SelectionClear;->getTimestamp()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 287
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$13$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionClear;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/SelectionClear;->getOwner()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 288
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$13$1;->val$event:Lcom/eltechs/axs/xserver/events/SelectionClear;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/SelectionClear;->getSelection()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
