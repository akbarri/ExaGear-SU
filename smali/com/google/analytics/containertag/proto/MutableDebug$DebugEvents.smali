.class public final Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
.super Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
.source "MutableDebug.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MutableMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/MutableDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugEvents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final EVENT_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 293
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    .line 294
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->initFields()V

    .line 295
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->makeImmutable()V

    .line 296
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    .line 20
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    return-void
.end method

.method private ensureEventInitialized()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 26
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllEvent(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    .line 115
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->ensureEventInitialized()V

    .line 116
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addEvent(Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    if-nez p1, :cond_0

    .line 103
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 105
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->ensureEventInitialized()V

    .line 106
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEvent()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    .line 92
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->ensureEventInitialized()V

    .line 93
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    .line 251
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public clearEvent()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;)Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

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

    .line 15
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 260
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    if-nez v1, :cond_1

    .line 261
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 263
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    .line 266
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getEventList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    return-object p1
.end method

.method public getEventCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableEvent(I)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    return-object p1
.end method

.method public getMutableEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    .line 72
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->ensureEventInitialized()V

    .line 73
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->cachedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getEventCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x13a46

    .line 276
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getEventList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 278
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 286
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Debug$DebugEvents"

    .line 287
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 289
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getEventCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 144
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getEvent(I)Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;->isInitialized()Z

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

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;)Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 157
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    .line 161
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 162
    :cond_1
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->ensureEventInitialized()V

    .line 164
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 15
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;)Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 174
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    const/4 v0, 0x0

    .line 176
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 178
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 183
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v6, 0xa

    if-eq v5, v6, :cond_1

    .line 189
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->addEvent()Lcom/google/analytics/containertag/proto/MutableDebug$EventInfo;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    :cond_2
    :goto_1
    move v3, v4

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 202
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 23
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;

    move-result-object v0

    return-object v0
.end method

.method public setEvent(ILcom/google/analytics/containertag/proto/MutableDebug$EventInfo;)Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->assertMutable()V

    if-nez p2, :cond_0

    .line 127
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->ensureEventInitialized()V

    .line 130
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 246
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->event_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 220
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 221
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$DebugEvents;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_1

    .line 222
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
