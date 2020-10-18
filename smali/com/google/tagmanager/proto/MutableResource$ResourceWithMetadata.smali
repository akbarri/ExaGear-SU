.class public final Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
.super Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
.source "MutableResource.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MutableMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/proto/MutableResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceWithMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_FIELD_NUMBER:I = 0x2

.field public static final TIME_STAMP_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

.field private timeStamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 313
    new-instance v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->defaultInstance:Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    .line 314
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->defaultInstance:Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->initFields()V

    .line 315
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->defaultInstance:Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    invoke-virtual {v0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->makeImmutable()V

    .line 316
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->defaultInstance:Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    invoke-direct {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    return-void
.end method

.method private ensureResourceInitialized()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->defaultInstance:Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-void
.end method

.method public static newMessage()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    .line 253
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    const-wide/16 v0, 0x0

    .line 254
    iput-wide v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->timeStamp_:J

    .line 255
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 256
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 259
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->clear()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->clear()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clearResource()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    .line 127
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 128
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    :cond_0
    return-object p0
.end method

.method public clearTimeStamp()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    .line 74
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->timeStamp_:J

    return-object p0
.end method

.method public clone()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->newMessageForType()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->mergeFrom(Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->clone()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

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

    .line 14
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->clone()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 267
    :cond_0
    instance-of v1, p1, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    if-nez v1, :cond_1

    .line 268
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 270
    :cond_1
    check-cast p1, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    .line 273
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasTimeStamp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasTimeStamp()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasTimeStamp()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 275
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getTimeStamp()J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 278
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasResource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasResource()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 279
    :goto_2
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasResource()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 280
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    return v1
.end method

.method public final getDefaultInstanceForType()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->defaultInstance:Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getDefaultInstanceForType()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getDefaultInstanceForType()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMutableResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    .line 105
    invoke-direct {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->ensureResourceInitialized()V

    .line 106
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 107
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;",
            ">;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 235
    iget-wide v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->timeStamp_:J

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    .line 237
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 239
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 240
    iput v1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->cachedSize:I

    return v1
.end method

.method public getTimeStamp()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->timeStamp_:J

    return-wide v0
.end method

.method public hasResource()Z
    .locals 2

    .line 92
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

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

    .line 52
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 289
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x13a46

    .line 291
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 294
    :goto_0
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasResource()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x35

    mul-int/2addr v0, v1

    .line 296
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 298
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 306
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.tagmanager.proto.Resource$ResourceWithMetadata"

    .line 307
    invoke-static {v0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 309
    :cond_0
    sget-object v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasTimeStamp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasResource()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 153
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    .line 157
    invoke-static {}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getDefaultInstance()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->setTimeStamp(J)Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    .line 161
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->ensureResourceInitialized()V

    .line 163
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$Resource;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 164
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 14
    check-cast p1, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->mergeFrom(Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;)Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 173
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 177
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 182
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    .line 188
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 201
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v4

    iput-object v4, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 203
    :cond_2
    iget v4, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 204
    iget-object v4, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 195
    :cond_3
    iget v5, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 196
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->timeStamp_:J

    goto :goto_0

    :cond_4
    :goto_1
    move v3, v4

    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 210
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 1

    .line 22
    new-instance v0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    invoke-direct {v0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->newMessageForType()Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setResource(Lcom/google/analytics/containertag/proto/MutableServing$Resource;)Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 118
    :cond_0
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 119
    iput-object p1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object p0
.end method

.method public setTimeStamp(J)Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->assertMutable()V

    .line 65
    iget v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->bitField0_:I

    .line 66
    iput-wide p1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->timeStamp_:J

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 248
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

    .line 220
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 221
    iget-wide v1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->timeStamp_:J

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 222
    iget-object v1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 223
    iget-object v1, p0, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 224
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 225
    invoke-virtual {p0}, Lcom/google/tagmanager/proto/MutableResource$ResourceWithMetadata;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_0

    .line 226
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method
