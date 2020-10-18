.class public final Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
.super Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
.source "MutableServing.java"

# interfaces
.implements Lcom/google/tagmanager/protobuf/MutableMessageLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/MutableServing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionalResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6280
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    .line 6281
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->initFields()V

    .line 6282
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->makeImmutable()V

    .line 6283
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6044
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 6045
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    return-void
.end method

.method private ensureResourceInitialized()V
    .locals 2

    .line 6072
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6073
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 1

    .line 6057
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 6053
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 1

    .line 6050
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 2

    .line 6231
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->assertMutable()V

    .line 6232
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    .line 6233
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6234
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 6236
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 6039
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 6039
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public clearResource()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 2

    .line 6116
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->assertMutable()V

    .line 6117
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    .line 6118
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6119
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    :cond_0
    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 1

    .line 6134
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;)Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 6039
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->clone()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

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

    .line 6039
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->clone()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6244
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    if-nez v1, :cond_1

    .line 6245
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6247
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    .line 6250
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->hasResource()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->hasResource()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 6251
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->hasResource()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 6252
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    return v1
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 1

    .line 6060
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 6039
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 6039
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public getMutableResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 6094
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->assertMutable()V

    .line 6095
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->ensureResourceInitialized()V

    .line 6096
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    .line 6097
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;",
            ">;"
        }
    .end annotation

    .line 6065
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 6088
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6214
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 6215
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 6218
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 6219
    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->cachedSize:I

    return v2
.end method

.method public hasResource()Z
    .locals 2

    .line 6082
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

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
    .locals 2

    .line 6261
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x13a7b

    .line 6263
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 6265
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 6273
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Serving$OptionalResource"

    .line 6274
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 6276
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 6125
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6126
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;)Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 6139
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6142
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->assertMutable()V

    .line 6143
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 6144
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->hasResource()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6145
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->ensureResourceInitialized()V

    .line 6146
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getResource()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$Resource;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 6147
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    .line 6149
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 6039
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;)Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 6156
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->assertMutable()V

    const/4 v0, 0x0

    .line 6158
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 6160
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 6165
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    .line 6171
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 6178
    :cond_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 6179
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 6181
    :cond_2
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    .line 6182
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    :cond_3
    :goto_1
    move v3, v4

    goto :goto_0

    .line 6187
    :cond_4
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 6188
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 1

    .line 6047
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 6039
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;

    move-result-object v0

    return-object v0
.end method

.method public setResource(Lcom/google/analytics/containertag/proto/MutableServing$Resource;)Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;
    .locals 1

    .line 6104
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->assertMutable()V

    if-nez p1, :cond_0

    .line 6106
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 6108
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    .line 6109
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 6227
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6198
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 6199
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 6200
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->resource_:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 6202
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 6203
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 6204
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$OptionalResource;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_1

    .line 6205
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
