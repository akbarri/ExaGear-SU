.class Lcom/eltechs/axs/proto/output/XEventSender$4$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$4;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/DestroyNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$4;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/DestroyNotify;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$4;Lcom/eltechs/axs/xserver/events/DestroyNotify;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$4$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$4;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$4$1;->val$event:Lcom/eltechs/axs/xserver/events/DestroyNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$4$1;->val$event:Lcom/eltechs/axs/xserver/events/DestroyNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/DestroyNotify;->getOriginatedAt()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$4$1;->val$event:Lcom/eltechs/axs/xserver/events/DestroyNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/DestroyNotify;->getDeletedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
