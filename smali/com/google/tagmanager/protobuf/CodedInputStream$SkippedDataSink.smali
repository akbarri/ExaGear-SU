.class Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;
.super Ljava/lang/Object;
.source "CodedInputStream.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/CodedInputStream$RefillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkippedDataSink"
.end annotation


# instance fields
.field private byteArrayStream:Ljava/io/ByteArrayOutputStream;

.field private lastPos:I

.field final synthetic this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iget-object p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-static {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->access$000(Lcom/google/tagmanager/protobuf/CodedInputStream;)I

    move-result p1

    iput p1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedInputStream$1;)V
    .locals 0

    .line 268
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;-><init>(Lcom/google/tagmanager/protobuf/CodedInputStream;)V

    return-void
.end method


# virtual methods
.method getSkippedData()Ljava/nio/ByteBuffer;
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/CodedInputStream;->access$100(Lcom/google/tagmanager/protobuf/CodedInputStream;)[B

    move-result-object v0

    iget v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-static {v2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->access$000(Lcom/google/tagmanager/protobuf/CodedInputStream;)I

    move-result v2

    iget v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->access$100(Lcom/google/tagmanager/protobuf/CodedInputStream;)[B

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/CodedInputStream;->access$000(Lcom/google/tagmanager/protobuf/CodedInputStream;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 290
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public onRefill()V
    .locals 5

    .line 274
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->access$100(Lcom/google/tagmanager/protobuf/CodedInputStream;)[B

    move-result-object v1

    iget v2, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/tagmanager/protobuf/CodedInputStream;

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/CodedInputStream;->access$000(Lcom/google/tagmanager/protobuf/CodedInputStream;)I

    move-result v3

    iget v4, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    .line 278
    iput v0, p0, Lcom/google/tagmanager/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    return-void
.end method
