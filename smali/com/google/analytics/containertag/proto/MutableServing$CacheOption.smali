.class public final Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
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
    name = "CacheOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final EXPIRATION_SECONDS_FIELD_NUMBER:I = 0x2

.field public static final GCACHE_EXPIRATION_SECONDS_FIELD_NUMBER:I = 0x3

.field public static final LEVEL_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private expirationSeconds_:I

.field private gcacheExpirationSeconds_:I

.field private level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4079
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 4080
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->initFields()V

    .line 4081
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->makeImmutable()V

    .line 4082
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3677
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    .line 3768
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    .line 3677
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3678
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    .line 3768
    sget-object p1, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3690
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 3686
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3683
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 2

    .line 4009
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    .line 4010
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    .line 4011
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    .line 4012
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v0, 0x0

    .line 4013
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->expirationSeconds_:I

    .line 4014
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 4015
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->gcacheExpirationSeconds_:I

    .line 4016
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 3672
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->clear()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3672
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->clear()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public clearExpirationSeconds()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3834
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    .line 3835
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v0, 0x0

    .line 3836
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->expirationSeconds_:I

    return-object p0
.end method

.method public clearGcacheExpirationSeconds()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3869
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    .line 3870
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v0, 0x0

    .line 3871
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->gcacheExpirationSeconds_:I

    return-object p0
.end method

.method public clearLevel()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3799
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    .line 3800
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 3801
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->NO_CACHE:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3880
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3672
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->clone()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

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

    .line 3672
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->clone()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4024
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    if-nez v1, :cond_1

    .line 4025
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4027
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 4030
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasLevel()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasLevel()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 4031
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasLevel()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 4032
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getLevel()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getLevel()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    move-result-object v2

    if-ne v1, v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 4035
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasExpirationSeconds()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasExpirationSeconds()Z

    move-result v2

    if-ne v1, v2, :cond_5

    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v3

    .line 4036
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasExpirationSeconds()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 4037
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getExpirationSeconds()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getExpirationSeconds()I

    move-result v2

    if-ne v1, v2, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v3

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 4040
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v2

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    move v1, v3

    .line 4041
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 4042
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getGcacheExpirationSeconds()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getGcacheExpirationSeconds()I

    move-result p1

    if-ne v1, p1, :cond_9

    move v1, v0

    goto :goto_5

    :cond_9
    move v1, v3

    :cond_a
    :goto_5
    return v1
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3693
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 3672
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 3672
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationSeconds()I
    .locals 1

    .line 3819
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->expirationSeconds_:I

    return v0
.end method

.method public getGcacheExpirationSeconds()I
    .locals 1

    .line 3854
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->gcacheExpirationSeconds_:I

    return v0
.end method

.method public getLevel()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;
    .locals 1

    .line 3781
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;",
            ">;"
        }
    .end annotation

    .line 3698
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3984
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3985
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 3988
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3989
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->expirationSeconds_:I

    invoke-static {v1, v0}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 3992
    :cond_1
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3993
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->gcacheExpirationSeconds_:I

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 3996
    :cond_2
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 3997
    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->cachedSize:I

    return v2
.end method

.method public hasExpirationSeconds()Z
    .locals 2

    .line 3813
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

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

.method public hasGcacheExpirationSeconds()Z
    .locals 2

    .line 3848
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLevel()Z
    .locals 2

    .line 3775
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

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
    .locals 4

    .line 4051
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x13a46

    .line 4053
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getLevel()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashEnum(Lcom/google/tagmanager/protobuf/Internal$EnumLite;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 4056
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasExpirationSeconds()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 4058
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getExpirationSeconds()I

    move-result v1

    add-int/2addr v0, v1

    .line 4060
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    .line 4062
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getGcacheExpirationSeconds()I

    move-result v0

    add-int/2addr v0, v2

    :cond_2
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 4064
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 4072
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Serving$CacheOption"

    .line 4073
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 4075
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    if-ne p0, p1, :cond_0

    .line 3885
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3888
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    .line 3889
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3890
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3891
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getLevel()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->setLevel(Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 3893
    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasExpirationSeconds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3894
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getExpirationSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->setExpirationSeconds(I)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 3896
    :cond_3
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hasGcacheExpirationSeconds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3897
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getGcacheExpirationSeconds()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->setGcacheExpirationSeconds(I)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 3899
    :cond_4
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 3672
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 8

    .line 3906
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    const/4 v0, 0x0

    .line 3908
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 3910
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 3915
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2

    const/16 v6, 0x18

    if-eq v5, v6, :cond_1

    .line 3921
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 3945
    :cond_1
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 3946
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->gcacheExpirationSeconds_:I

    goto :goto_0

    .line 3940
    :cond_2
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 3941
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->expirationSeconds_:I

    goto :goto_0

    .line 3928
    :cond_3
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readEnum()I

    move-result v6

    .line 3929
    invoke-static {v6}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->valueOf(I)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    move-result-object v7

    if-nez v7, :cond_4

    .line 3931
    invoke-virtual {v2, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 3932
    invoke-virtual {v2, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    goto :goto_0

    .line 3934
    :cond_4
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 3935
    iput-object v7, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    goto :goto_0

    :cond_5
    :goto_1
    move v3, v4

    goto :goto_0

    .line 3951
    :cond_6
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 3952
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3680
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 3672
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    return-object v0
.end method

.method public setExpirationSeconds(I)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3825
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    .line 3826
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 3827
    iput p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->expirationSeconds_:I

    return-object p0
.end method

.method public setGcacheExpirationSeconds(I)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3860
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    .line 3861
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 3862
    iput p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->gcacheExpirationSeconds_:I

    return-object p0
.end method

.method public setLevel(Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 3787
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->assertMutable()V

    if-nez p1, :cond_0

    .line 3789
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 3791
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    .line 3792
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 4005
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

    .line 3962
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 3963
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 3964
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->level_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption$CacheLevel;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3966
    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3967
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->expirationSeconds_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3969
    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    .line 3970
    iget v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->gcacheExpirationSeconds_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3972
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 3973
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 3974
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_3

    .line 3975
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
