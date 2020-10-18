.class Lcom/eltechs/axs/proto/output/XEventSender$16$1;
.super Ljava/lang/Object;
.source "XEventSender.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/output/XEventSender$16;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/MappingNotify;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/proto/output/XEventSender$16;

.field final synthetic val$event:Lcom/eltechs/axs/xserver/events/MappingNotify;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/proto/output/XEventSender$16;Lcom/eltechs/axs/xserver/events/MappingNotify;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender$16$1;->this$0:Lcom/eltechs/axs/proto/output/XEventSender$16;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/XEventSender$16$1;->val$event:Lcom/eltechs/axs/xserver/events/MappingNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$16$1;->val$event:Lcom/eltechs/axs/xserver/events/MappingNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/MappingNotify;->getRequest()Lcom/eltechs/axs/xserver/events/MappingNotify$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/MappingNotify$Request;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 344
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$16$1;->val$event:Lcom/eltechs/axs/xserver/events/MappingNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/MappingNotify;->getFirstKeycode()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 345
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/XEventSender$16$1;->val$event:Lcom/eltechs/axs/xserver/events/MappingNotify;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/events/MappingNotify;->getCount()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
