.class Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests$1;
.super Ljava/lang/Object;
.source "DRI2Requests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;->QueryVersion(Lcom/eltechs/axs/xconnectors/XResponse;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests$1;->this$0:Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x3

    .line 39
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
