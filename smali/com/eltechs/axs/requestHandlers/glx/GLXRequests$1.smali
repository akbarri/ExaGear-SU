.class Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$1;
.super Ljava/lang/Object;
.source "GLXRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->QueryVersion(Lcom/eltechs/axs/xconnectors/XResponse;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$1;->this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    .line 65
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method
