.class public Lcom/eltechs/axs/proto/output/PODWriter;
.super Ljava/lang/Object;
.source "PODWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;,
        Lcom/eltechs/axs/proto/output/PODWriter$BufferWriter;,
        Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnWireLength(Ljava/lang/Object;)I
    .locals 2

    .line 38
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;-><init>(Lcom/eltechs/axs/proto/output/PODWriter$1;)V

    .line 39
    invoke-static {p0, v0}, Lcom/eltechs/axs/proto/output/PODVisitor;->visit(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    .line 40
    invoke-static {v0}, Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;->access$100(Lcom/eltechs/axs/proto/output/PODWriter$LengthFinder;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    const-string v0, "IOException can\'t be thrown by LengthFinder."

    .line 43
    invoke-static {p0, v0}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static write(Lcom/eltechs/axs/xconnectors/XOutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;-><init>(Lcom/eltechs/axs/xconnectors/XOutputStream;)V

    invoke-static {p1, v0}, Lcom/eltechs/axs/proto/output/PODVisitor;->visit(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V

    return-void
.end method

.method public static write(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 28
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/proto/output/PODWriter$BufferWriter;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/proto/output/PODWriter$BufferWriter;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p1, v0}, Lcom/eltechs/axs/proto/output/PODVisitor;->visit(Ljava/lang/Object;Lcom/eltechs/axs/proto/output/PODVisitor$Callback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
