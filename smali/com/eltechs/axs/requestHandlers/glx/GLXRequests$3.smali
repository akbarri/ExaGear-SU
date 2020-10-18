.class Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$3;
.super Ljava/lang/Object;
.source "GLXRequests.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XResponse$ResponseDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->QueryServerString(Lcom/eltechs/axs/xconnectors/XResponse;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

.field final synthetic val$outString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$3;->this$0:Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

    iput-object p2, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$3;->val$outString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests$3;->val$outString:Ljava/lang/String;

    invoke-static {}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;->access$000()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method
