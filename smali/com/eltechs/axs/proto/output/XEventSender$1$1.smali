.class Lcom/eltechs/axs/proto/output/XEventSender$1$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$1;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/MapNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$1;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/MapNotify;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$1;Lcom/eltechs/axs/xserver/events/MapNotify;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$1$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$1;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$1$1;->val$event:Lcom/eltechs/axs/xserver/events/MapNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$1$1;->val$event:Lcom/eltechs/axs/xserver/events/MapNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/MapNotify;->getOriginatedAt()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$1$1;->val$event:Lcom/eltechs/axs/xserver/events/MapNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/MapNotify;->getMappedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$1$1;->val$event:Lcom/eltechs/axs/xserver/events/MapNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/MapNotify;->getMappedWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
