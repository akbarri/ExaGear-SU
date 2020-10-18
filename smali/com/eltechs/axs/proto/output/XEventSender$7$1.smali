.class Lcom/eltechs/axs/proto/output/XEventSender$7$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$7;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/ResizeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$7;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/ResizeRequest;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$7;Lcom/eltechs/axs/xserver/events/ResizeRequest;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$7$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$7;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$7$1;->val$event:Lcom/eltechs/axs/xserver/events/ResizeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$7$1;->val$event:Lcom/eltechs/axs/xserver/events/ResizeRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ResizeRequest;->getWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 146
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$7$1;->val$event:Lcom/eltechs/axs/xserver/events/ResizeRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ResizeRequest;->getWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 147
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$7$1;->val$event:Lcom/eltechs/axs/xserver/events/ResizeRequest;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/ResizeRequest;->getHeight()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method
