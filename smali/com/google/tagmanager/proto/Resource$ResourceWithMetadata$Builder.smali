.class public final Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Resource.java"

# interfaces
.implements Lcom/google/tagmanager/proto/Resource$ResourceWithMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
        "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;",
        ">;",
        "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private timeStamp_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 357
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 487
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 358
    invoke-direct {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 1

    .line 350
    invoke-static {}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->create()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 1

    .line 364
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public build()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->buildPartial()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    invoke-static {v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->build()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .locals 6

    .line 393
    new-instance v0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/tagmanager/proto/Resource$1;)V

    .line 394
    iget v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 399
    :goto_0
    iget-wide v4, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->timeStamp_:J

    invoke-static {v0, v4, v5}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->access$302(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;J)J

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v0, v1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->access$402(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 404
    invoke-static {v0, v3}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->access$502(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;I)I

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->buildPartial()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 2

    .line 368
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    const-wide/16 v0, 0x0

    .line 369
    iput-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->timeStamp_:J

    .line 370
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    .line 371
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 372
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->clear()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->clear()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearResource()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 1

    .line 541
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 543
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTimeStamp()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 2

    .line 481
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 482
    iput-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->timeStamp_:J

    return-object p0
.end method

.method public clone()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 2

    .line 377
    invoke-static {}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->create()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->buildPartial()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->mergeFrom(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->clone()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->clone()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->clone()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

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

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->clone()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    .locals 1

    .line 381
    invoke-static {}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->getDefaultInstance()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->getDefaultInstanceForType()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->getDefaultInstanceForType()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 466
    iget-wide v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->timeStamp_:J

    return-wide v0
.end method

.method public hasResource()Z
    .locals 2

    .line 492
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeStamp()Z
    .locals 2

    .line 460
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

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
    .locals 2

    .line 421
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->hasTimeStamp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->hasResource()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 429
    :cond_1
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->getResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 2

    .line 409
    invoke-static {}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->getDefaultInstance()Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 410
    :cond_0
    invoke-virtual {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->hasTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->setTimeStamp(J)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    .line 413
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->getResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->mergeResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->access$600(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 442
    :try_start_0
    sget-object v1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 448
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->mergeFrom(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 444
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0, v0}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->mergeFrom(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

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

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 350
    check-cast p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->mergeFrom(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

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

    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 3

    .line 526
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    goto :goto_0

    .line 531
    :cond_0
    iput-object p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 534
    :goto_0
    iget p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResource(Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 0

    .line 517
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 519
    iget p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    return-object p0
.end method

.method public setResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 505
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 507
    :cond_0
    iput-object p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->resource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 509
    iget p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;
    .locals 1

    .line 472
    iget v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->bitField0_:I

    .line 473
    iput-wide p1, p0, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata$Builder;->timeStamp_:J

    return-object p0
.end method
