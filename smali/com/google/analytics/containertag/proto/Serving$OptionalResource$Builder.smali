.class public final Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$OptionalResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$OptionalResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/analytics/containertag/proto/Serving$OptionalResource;",
        "Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$OptionalResourceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9568
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9651
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 9569
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$8100()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 1

    .line 9561
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 1

    .line 9575
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public build()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;
    .locals 2

    .line 9594
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v0

    .line 9595
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9596
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;
    .locals 3

    .line 9602
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V

    .line 9603
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9608
    :goto_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->access$8302(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 9609
    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->access$8402(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;I)I

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 1

    .line 9579
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .line 9580
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 9581
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResource()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 1

    .line 9705
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 9707
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 2

    .line 9586
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;
    .locals 1

    .line 9590
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 9561
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    .line 9662
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method

.method public hasResource()Z
    .locals 2

    .line 9656
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isInitialized()Z
    .locals 1

    .line 9623
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9624
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->getResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 1

    .line 9614
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9615
    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9616
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->getResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->mergeResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    .line 9618
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->access$8500(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9638
    :try_start_0
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9644
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9640
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9641
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 9644
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    :cond_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9561
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 9561
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$OptionalResource;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$OptionalResource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9561
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 3

    .line 9690
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9692
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    goto :goto_0

    .line 9695
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 9698
    :goto_0
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResource(Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 0

    .line 9681
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 9683
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 9669
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 9671
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 9673
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$OptionalResource$Builder;->bitField0_:I

    return-object p0
.end method
