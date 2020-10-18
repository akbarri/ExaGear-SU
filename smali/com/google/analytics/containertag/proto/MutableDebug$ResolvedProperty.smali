.class public final Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
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
    name = "ResolvedProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4147
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    .line 4148
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->initFields()V

    .line 4149
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->makeImmutable()V

    .line 4150
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3807
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    .line 3833
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    .line 3807
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3808
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    .line 3833
    sget-object p1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    return-void
.end method

.method private ensureValueInitialized()V
    .locals 2

    .line 3907
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3908
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3820
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 3816
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3813
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 2

    .line 4087
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    .line 4088
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    .line 4089
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    .line 4090
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 4091
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4092
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 4094
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 3802
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3802
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public clearKey()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3898
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    .line 3899
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3900
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearValue()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 2

    .line 3951
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    .line 3952
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3953
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3954
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    :cond_0
    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3969
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3802
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

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

    .line 3802
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4102
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    if-nez v1, :cond_1

    .line 4103
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4105
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    .line 4108
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasKey()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 4109
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 4110
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 4113
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasValue()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 4114
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 4115
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->equals(Ljava/lang/Object;)Z

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

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3823
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 3802
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 3802
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 3846
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    .line 3847
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3848
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3850
    :cond_0
    check-cast v0, [B

    .line 3851
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 3853
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3854
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getKeyAsBytes()[B
    .locals 2

    .line 3863
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    .line 3864
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3865
    check-cast v0, Ljava/lang/String;

    .line 3866
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 3867
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    return-object v0

    .line 3870
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getMutableValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 3929
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    .line 3930
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->ensureValueInitialized()V

    .line 3931
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3932
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;",
            ">;"
        }
    .end annotation

    .line 3828
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4066
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4067
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getKeyAsBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v0

    add-int/2addr v2, v0

    .line 4070
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 4071
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 4074
    :cond_1
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 4075
    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->cachedSize:I

    return v2
.end method

.method public getValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 3923
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object v0
.end method

.method public hasKey()Z
    .locals 2

    .line 3840
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasValue()Z
    .locals 2

    .line 3917
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    .line 4124
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x13a46

    .line 4126
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 4128
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x25

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    const/16 v0, 0x35

    mul-int/2addr v0, v1

    .line 4130
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 4132
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 4140
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Debug$ResolvedProperty"

    .line 4141
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 4143
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3960
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3961
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 3974
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3977
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    .line 3978
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3979
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3980
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3981
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3982
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    goto :goto_0

    .line 3984
    :cond_2
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    check-cast v0, [B

    .line 3985
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    .line 3988
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3989
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->ensureValueInitialized()V

    .line 3990
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 3991
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3993
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 3802
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 4000
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    const/4 v0, 0x0

    .line 4002
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 4004
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_5

    .line 4009
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    const/16 v6, 0x12

    if-eq v5, v6, :cond_1

    .line 4015
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 4027
    :cond_1
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 4028
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 4030
    :cond_2
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 4031
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 4022
    :cond_3
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 4023
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    move v3, v4

    goto :goto_0

    .line 4036
    :cond_5
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 4037
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3810
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3802
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3877
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    if-nez p1, :cond_0

    .line 3878
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3879
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3880
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method public setKeyAsBytes([B)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3888
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    if-nez p1, :cond_0

    .line 3889
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3890
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3891
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 3939
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->assertMutable()V

    if-nez p1, :cond_0

    .line 3941
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3943
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    .line 3944
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 4083
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

    .line 4047
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 4048
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4049
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getKeyAsBytes()[B

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 4051
    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4052
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->value_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 4054
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 4055
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 4056
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_2

    .line 4057
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
