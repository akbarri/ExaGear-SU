.class Lcom/eltechs/axs/proto/output/XEventSender$5$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$5;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/PropertyNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$5;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/PropertyNotify;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$5;Lcom/eltechs/axs/xserver/events/PropertyNotify;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$5$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$5;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$5$1;->val$event:Lcom/eltechs/axs/xserver/events/PropertyNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$5$1;->val$event:Lcom/eltechs/axs/xserver/events/PropertyNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PropertyNotify;->getWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$5$1;->val$event:Lcom/eltechs/axs/xserver/events/PropertyNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PropertyNotify;->getName()Lcom/eltechs/axs/xserver/Atom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/Atom;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 111
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$5$1;->val$event:Lcom/eltechs/axs/xserver/events/PropertyNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PropertyNotify;->getTimestamp()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$5$1;->val$event:Lcom/eltechs/axs/xserver/events/PropertyNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/PropertyNotify;->isDelete()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
