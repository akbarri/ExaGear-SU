.class public final Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
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
    name = "ResolvedFunctionCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final ASSOCIATED_RULE_NAME_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTIES_FIELD_NUMBER:I = 0x1

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private associatedRuleName_:Ljava/lang/Object;

.field private bitField0_:I

.field private properties_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;",
            ">;"
        }
    .end annotation
.end field

.field private result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2618
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    .line 2619
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->initFields()V

    .line 2620
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->makeImmutable()V

    .line 2621
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2146
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2172
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    .line 2326
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    .line 2146
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2147
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 p1, 0x0

    .line 2172
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    .line 2326
    sget-object p1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-void
.end method

.method private ensurePropertiesInitialized()V
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureResultInitialized()V
    .locals 2

    .line 2273
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2274
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2159
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 2155
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2152
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllProperties(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;"
        }
    .end annotation

    .line 2242
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2243
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensurePropertiesInitialized()V

    .line 2244
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addProperties(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2229
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    if-nez p1, :cond_0

    .line 2231
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2233
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensurePropertiesInitialized()V

    .line 2234
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProperties()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 2

    .line 2219
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2220
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensurePropertiesInitialized()V

    .line 2221
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->newMessage()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v0

    .line 2222
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 2

    .line 2551
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2552
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    const/4 v0, 0x0

    .line 2553
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    .line 2554
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2555
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 2557
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2558
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    .line 2559
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->clear()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public clearAssociatedRuleName()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2391
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2392
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2393
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearProperties()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2265
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    const/4 v0, 0x0

    .line 2266
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    return-object p0
.end method

.method public clearResult()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 2

    .line 2317
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2318
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2319
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->clear()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    :cond_0
    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2412
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

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

    .line 2141
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->clone()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2567
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    if-nez v1, :cond_1

    .line 2568
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2570
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    .line 2573
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getPropertiesList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getPropertiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    .line 2575
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasResult()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasResult()Z

    move-result v3

    if-ne v1, v3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 2576
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 2577
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 2580
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v3

    if-ne v1, v3, :cond_6

    move v1, v0

    goto :goto_3

    :cond_6
    move v1, v2

    .line 2581
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    .line 2582
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getAssociatedRuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getAssociatedRuleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    move v1, v2

    :cond_8
    :goto_4
    return v1
.end method

.method public getAssociatedRuleName()Ljava/lang/String;
    .locals 2

    .line 2339
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    .line 2340
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2341
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2343
    :cond_0
    check-cast v0, [B

    .line 2344
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 2346
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2347
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getAssociatedRuleNameAsBytes()[B
    .locals 2

    .line 2356
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    .line 2357
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2358
    check-cast v0, Ljava/lang/String;

    .line 2359
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 2360
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-object v0

    .line 2363
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2162
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public getMutableProperties(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 2213
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    return-object p1
.end method

.method public getMutablePropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;",
            ">;"
        }
    .end annotation

    .line 2199
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2200
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensurePropertiesInitialized()V

    .line 2201
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableResult()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 2295
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2296
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensureResultInitialized()V

    .line 2297
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2298
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;",
            ">;"
        }
    .end annotation

    .line 2167
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getProperties(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;
    .locals 1

    .line 2207
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    return-object p1
.end method

.method public getPropertiesCount()I
    .locals 1

    .line 2184
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;",
            ">;"
        }
    .end annotation

    .line 2190
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 2289
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2524
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    .line 2525
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2526
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2530
    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_2

    .line 2531
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {v3, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2534
    :cond_2
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 2535
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getAssociatedRuleNameAsBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2538
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2539
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->cachedSize:I

    return v0
.end method

.method public hasAssociatedRuleName()Z
    .locals 2

    .line 2333
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

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

.method public hasResult()Z
    .locals 2

    .line 2283
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

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

    .line 2591
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getPropertiesCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x13a46

    .line 2593
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getPropertiesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 2595
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasResult()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 2597
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2599
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    .line 2601
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getAssociatedRuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    :cond_2
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 2603
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 2611
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Debug$ResolvedFunctionCall"

    .line 2612
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 2614
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 2398
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getPropertiesCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2399
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getProperties(I)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2403
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2404
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 2417
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2420
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    .line 2421
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 2422
    :cond_1
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2423
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensurePropertiesInitialized()V

    .line 2424
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2427
    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2428
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensureResultInitialized()V

    .line 2429
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getResult()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 2430
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2432
    :cond_3
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->hasAssociatedRuleName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2433
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2434
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2435
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    goto :goto_0

    .line 2437
    :cond_4
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    check-cast v0, [B

    .line 2438
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    .line 2441
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 2141
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 7

    .line 2448
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    const/4 v0, 0x0

    .line 2450
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 2452
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 2457
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    const/16 v6, 0x12

    if-eq v5, v6, :cond_2

    const/16 v6, 0x1a

    if-eq v5, v6, :cond_1

    .line 2463
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 2482
    :cond_1
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2483
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    goto :goto_0

    .line 2474
    :cond_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 2475
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v5

    iput-object v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    .line 2477
    :cond_3
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2478
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 2470
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->addProperties()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    :cond_5
    :goto_1
    move v3, v4

    goto :goto_0

    .line 2488
    :cond_6
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 2489
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2149
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public setAssociatedRuleName(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2370
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    if-nez p1, :cond_0

    .line 2371
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2372
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2373
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setAssociatedRuleNameAsBytes([B)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2381
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    if-nez p1, :cond_0

    .line 2382
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2383
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2384
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->associatedRuleName_:Ljava/lang/Object;

    return-object p0
.end method

.method public setProperties(ILcom/google/analytics/containertag/proto/MutableDebug$ResolvedProperty;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2253
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    if-nez p2, :cond_0

    .line 2255
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2257
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->ensurePropertiesInitialized()V

    .line 2258
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setResult(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;
    .locals 1

    .line 2305
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->assertMutable()V

    if-nez p1, :cond_0

    .line 2307
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2309
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    .line 2310
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2547
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

    .line 2499
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 2500
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2501
    :goto_0
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2502
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->properties_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2506
    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1

    .line 2507
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->result_:Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    invoke-virtual {p1, v3, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 2509
    :cond_1
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    .line 2510
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getAssociatedRuleNameAsBytes()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 2512
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 2513
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 2514
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableDebug$ResolvedFunctionCall;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_3

    .line 2515
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
