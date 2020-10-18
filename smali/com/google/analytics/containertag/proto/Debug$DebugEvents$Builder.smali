.class public final Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Debug.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Debug$DebugEventsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/analytics/containertag/proto/Debug$DebugEvents;",
        "Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Debug$DebugEventsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$EventInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 322
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 411
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    .line 323
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 315
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->create()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 329
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEventIsMutable()V
    .locals 3

    .line 414
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    .line 416
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllEvent(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/Debug$EventInfo;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;"
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 512
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addEvent(ILcom/google/analytics/containertag/proto/Debug$EventInfo$Builder;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 501
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 502
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Debug$EventInfo$Builder;->build()Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addEvent(ILcom/google/analytics/containertag/proto/Debug$EventInfo;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 479
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 482
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addEvent(Lcom/google/analytics/containertag/proto/Debug$EventInfo$Builder;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 491
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 492
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Debug$EventInfo$Builder;->build()Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEvent(Lcom/google/analytics/containertag/proto/Debug$EventInfo;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 466
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 469
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->build()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .locals 3

    .line 356
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Debug$1;)V

    .line 357
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    .line 358
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 359
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    .line 360
    iget v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->access$302(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 333
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .line 334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    .line 335
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->clear()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->clear()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEvent()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 521
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    .line 522
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 2

    .line 340
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->create()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->clone()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->clone()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->clone()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

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

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->clone()Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    .locals 1

    .line 344
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)Lcom/google/analytics/containertag/proto/Debug$EventInfo;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    return-object p1
.end method

.method public getEventCount()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Debug$EventInfo;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->getEventCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 384
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->getEvent(I)Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Debug$EventInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 2

    .line 367
    invoke-static {}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 368
    :cond_0
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->access$300(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->access$300(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    .line 371
    iget v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->bitField0_:I

    goto :goto_0

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 374
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->access$300(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->access$400(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 398
    :try_start_0
    sget-object v1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 400
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

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

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 315
    check-cast p1, Lcom/google/analytics/containertag/proto/Debug$DebugEvents;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Debug$DebugEvents;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

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

    .line 315
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeEvent(I)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 530
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 531
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setEvent(ILcom/google/analytics/containertag/proto/Debug$EventInfo$Builder;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    .line 456
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 457
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Debug$EventInfo$Builder;->build()Lcom/google/analytics/containertag/proto/Debug$EventInfo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setEvent(ILcom/google/analytics/containertag/proto/Debug$EventInfo;)Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 444
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->ensureEventIsMutable()V

    .line 447
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Debug$DebugEvents$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
