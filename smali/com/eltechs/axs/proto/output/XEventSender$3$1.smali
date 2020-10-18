.class Lcom/eltechs/axs/proto/output/XEventSender$3$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$3;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/CreateNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$3;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/CreateNotify;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$3;Lcom/eltechs/axs/xserver/events/CreateNotify;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$3$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$3;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$3$1;->val$event:Lcom/eltechs/axs/xserver/events/CreateNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$3$1;->val$event:Lcom/eltechs/axs/xserver/events/CreateNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/CreateNotify;->getWindow()Lcom/eltechs/axs/xserver/Window;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getBoundingRectangle()Lcom/eltechs/axs/geom/Rectangle;

    move-result-object v1

    .line 71
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getWindowAttributes()Lcom/eltechs/axs/xserver/WindowAttributes;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/eltechs/axs/proto/output/XEventSender$3$1;->val$event:Lcom/eltechs/axs/xserver/events/CreateNotify;

    invoke-virtual {v3}, Lcom/eltechs/axs/xserver/events/CreateNotify;->getParent()Lcom/eltechs/axs/xserver/Window;

    move-result-object v3

    invoke-interface {v3}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 74
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/Window;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    iget v0, v1, Lcom/eltechs/axs/geom/Rectangle;->x:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 76
    iget v0, v1, Lcom/eltechs/axs/geom/Rectangle;->y:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 77
    iget v0, v1, Lcom/eltechs/axs/geom/Rectangle;->width:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 78
    iget v0, v1, Lcom/eltechs/axs/geom/Rectangle;->height:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/WindowAttributes;->getBorderWidth()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/WindowAttributes;->isOverrideRedirect()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
