.class public final Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "TypeSystem.java"

# interfaces
.implements Lcom/google/analytics/midtier/proto/containertag/TypeSystem$ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;",
        ">;",
        "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$ValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private boolean_:Z

.field private containsReferences_:Z

.field private escaping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;",
            ">;"
        }
    .end annotation
.end field

.field private functionId_:Ljava/lang/Object;

.field private integer_:J

.field private listItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private macroReference_:Ljava/lang/Object;

.field private mapKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private string_:Ljava/lang/Object;

.field private templateToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1423
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 1678
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    const-string v0, ""

    .line 1713
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1789
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1914
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 2039
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    const-string v0, ""

    .line 2164
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    const-string v0, ""

    .line 2240
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    .line 2380
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 2505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 1424
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1417
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->create()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1430
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    invoke-direct {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;-><init>()V

    return-object v0
.end method

.method private ensureEscapingIsMutable()V
    .locals 3

    .line 2508
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2509
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 2510
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureListItemIsMutable()V
    .locals 3

    .line 1792
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1793
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1794
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMapKeyIsMutable()V
    .locals 3

    .line 1917
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1918
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 1919
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMapValueIsMutable()V
    .locals 3

    .line 2042
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 2044
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTemplateTokenIsMutable()V
    .locals 3

    .line 2383
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2384
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 2385
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllEscaping(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;"
        }
    .end annotation

    .line 2561
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureEscapingIsMutable()V

    .line 2562
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllListItem(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;"
        }
    .end annotation

    .line 1889
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1890
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapKey(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;"
        }
    .end annotation

    .line 2014
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 2015
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapValue(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;"
        }
    .end annotation

    .line 2139
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2140
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllTemplateToken(Ljava/lang/Iterable;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;"
        }
    .end annotation

    .line 2480
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2481
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addEscaping(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 2549
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2551
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureEscapingIsMutable()V

    .line 2552
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addListItem(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1879
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1880
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addListItem(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 1857
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1859
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1860
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addListItem(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1869
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1870
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addListItem(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 1844
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1846
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1847
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapKey(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2004
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 2005
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addMapKey(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 1982
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1984
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1985
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addMapKey(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1994
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1995
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapKey(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 1969
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1971
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1972
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2129
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2130
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addMapValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 2107
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2109
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2110
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addMapValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2119
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2120
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 2094
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2096
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2097
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTemplateToken(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2470
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2471
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addTemplateToken(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 2448
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2450
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2451
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addTemplateToken(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2460
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2461
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTemplateToken(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 2435
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2437
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2438
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 2

    .line 1471
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    .line 1472
    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1473
    invoke-static {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 6

    .line 1479
    new-instance v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$1;)V

    .line 1480
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1485
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$302(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 1489
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$402(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 1491
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1492
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1494
    :cond_2
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$502(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1495
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    .line 1496
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 1497
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1499
    :cond_3
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$602(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1500
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 1501
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 1502
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1504
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$702(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x20

    const/16 v4, 0x20

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x4

    .line 1508
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$802(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    or-int/lit8 v3, v3, 0x8

    .line 1512
    :cond_6
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$902(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x10

    .line 1516
    :cond_7
    iget-wide v4, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->integer_:J

    invoke-static {v0, v4, v5}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1002(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;J)J

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit8 v3, v3, 0x20

    .line 1520
    :cond_8
    iget-boolean v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->boolean_:Z

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1102(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Z)Z

    .line 1521
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v4, 0x200

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9

    .line 1522
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 1523
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x201

    iput v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1525
    :cond_9
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1202(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    .line 1526
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v4, 0x400

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_a

    .line 1527
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 1528
    iget v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x401

    iput v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1530
    :cond_a
    iget-object v2, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1302(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/List;)Ljava/util/List;

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    or-int/lit8 v3, v3, 0x40

    .line 1534
    :cond_b
    iget-boolean v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->containsReferences_:Z

    invoke-static {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1402(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Z)Z

    .line 1535
    invoke-static {v0, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1502(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;I)I

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 2

    .line 1434
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 1435
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    .line 1436
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const-string v0, ""

    .line 1437
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1438
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1439
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1440
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 1442
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 1444
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const-string v0, ""

    .line 1445
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    .line 1446
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const-string v0, ""

    .line 1447
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    .line 1448
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 1449
    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->integer_:J

    .line 1450
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 1451
    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->boolean_:Z

    .line 1452
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1453
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 1454
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1455
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 1456
    iget v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1457
    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->containsReferences_:Z

    .line 1458
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clear()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clear()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clear()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBoolean()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2374
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2375
    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->boolean_:Z

    return-object p0
.end method

.method public clearContainsReferences()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2603
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2604
    iput-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->containsReferences_:Z

    return-object p0
.end method

.method public clearEscaping()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 2572
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearFunctionId()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2297
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2298
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearInteger()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 2

    .line 2342
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2343
    iput-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->integer_:J

    return-object p0
.end method

.method public clearListItem()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1899
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1900
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMacroReference()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2221
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2222
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearMapKey()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2024
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 2025
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMapValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 2150
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearString()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1770
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1771
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearTemplateToken()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2490
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 2491
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1707
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1708
    sget-object v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->STRING:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 2

    .line 1463
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->create()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->buildPartial()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

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

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->clone()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean()Z
    .locals 1

    .line 2359
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->boolean_:Z

    return v0
.end method

.method public getContainsReferences()Z
    .locals 1

    .line 2588
    iget-boolean v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->containsReferences_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 1467
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getDefaultInstanceForType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1417
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getDefaultInstanceForType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    return-object v0
.end method

.method public getEscaping(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;
    .locals 1

    .line 2529
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;

    return-object p1
.end method

.method public getEscapingCount()I
    .locals 1

    .line 2523
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEscapingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;",
            ">;"
        }
    .end annotation

    .line 2517
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionId()Ljava/lang/String;
    .locals 2

    .line 2251
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    .line 2252
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2253
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 2255
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2256
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2257
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2261
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionIdBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 2269
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    .line 2270
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2271
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 2274
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    return-object v0

    .line 2277
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getInteger()J
    .locals 2

    .line 2327
    iget-wide v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->integer_:J

    return-wide v0
.end method

.method public getListItem(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 1814
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p1
.end method

.method public getListItemCount()I
    .locals 1

    .line 1808
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 1802
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMacroReference()Ljava/lang/String;
    .locals 2

    .line 2175
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    .line 2176
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2177
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 2179
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2180
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 2185
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMacroReferenceBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 2193
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    .line 2194
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2195
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 2198
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    return-object v0

    .line 2201
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getMapKey(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 1939
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p1
.end method

.method public getMapKeyCount()I
    .locals 1

    .line 1933
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMapKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 1927
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 2064
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p1
.end method

.method public getMapValueCount()I
    .locals 1

    .line 2058
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMapValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 2052
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .line 1724
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1725
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1726
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 1728
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1729
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1730
    iput-object v1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 1734
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStringBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 1742
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1743
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1744
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 1747
    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    return-object v0

    .line 1750
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 2405
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p1
.end method

.method public getTemplateTokenCount()I
    .locals 1

    .line 2399
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTemplateTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 2393
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    return-object v0
.end method

.method public hasBoolean()Z
    .locals 2

    .line 2353
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContainsReferences()Z
    .locals 2

    .line 2582
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunctionId()Z
    .locals 2

    .line 2245
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInteger()Z
    .locals 2

    .line 2321
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMacroReference()Z
    .locals 2

    .line 2169
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasString()Z
    .locals 2

    .line 1718
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .line 1683
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

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
    .locals 3

    .line 1624
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->hasType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1628
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getListItemCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1629
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getListItem(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1634
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getMapKeyCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1635
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getMapKey(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1640
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getMapValueCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1641
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getMapValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    .line 1646
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getTemplateTokenCount()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 1647
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1652
    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 2

    .line 1540
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getDefaultInstance()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1541
    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1542
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1544
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1545
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1546
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$400(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    .line 1549
    :cond_2
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$500(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1550
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1551
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$500(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    .line 1552
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    goto :goto_0

    .line 1554
    :cond_3
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1555
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$500(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1559
    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1560
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1561
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    .line 1562
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    goto :goto_1

    .line 1564
    :cond_5
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1565
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1569
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$700(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1570
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1571
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$700(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    .line 1572
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    goto :goto_2

    .line 1574
    :cond_7
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 1575
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$700(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1579
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasMacroReference()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1580
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1581
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$800(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    .line 1584
    :cond_9
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasFunctionId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1585
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1586
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$900(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    .line 1589
    :cond_a
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasInteger()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1590
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getInteger()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setInteger(J)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1592
    :cond_b
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasBoolean()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1593
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setBoolean(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1595
    :cond_c
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1200(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1596
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1597
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1200(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    .line 1598
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    goto :goto_3

    .line 1600
    :cond_d
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 1601
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1200(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1605
    :cond_e
    :goto_3
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1300(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1606
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1607
    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1300(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    .line 1608
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    goto :goto_4

    .line 1610
    :cond_f
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureEscapingIsMutable()V

    .line 1611
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1300(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1615
    :cond_10
    :goto_4
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->hasContainsReferences()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1616
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getContainsReferences()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 1618
    :cond_11
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeExtensionFields(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 1619
    invoke-virtual {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->access$1600(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1665
    :try_start_0
    sget-object v1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1671
    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1667
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1668
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1671
    invoke-virtual {p0, v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

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

    .line 1417
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 1417
    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p0, p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

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

    .line 1417
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeListItem(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1908
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1909
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeMapKey(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2033
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 2034
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeMapValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2158
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2159
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2499
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2500
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setBoolean(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2365
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2366
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->boolean_:Z

    return-object p0
.end method

.method public setContainsReferences(Z)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2594
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2595
    iput-boolean p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->containsReferences_:Z

    return-object p0
.end method

.method public setEscaping(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Escaping;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 2537
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2539
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureEscapingIsMutable()V

    .line 2540
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->escaping_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setFunctionId(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 2286
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2288
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2289
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setFunctionIdBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 2308
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2310
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2311
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->functionId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setInteger(J)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2333
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2334
    iput-wide p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->integer_:J

    return-object p0
.end method

.method public setListItem(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1834
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1835
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setListItem(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 1822
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1824
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureListItemIsMutable()V

    .line 1825
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMacroReference(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 2210
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2212
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2213
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    return-object p0
.end method

.method public setMacroReferenceBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 2232
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2234
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 2235
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->macroReference_:Ljava/lang/Object;

    return-object p0
.end method

.method public setMapKey(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 1959
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1960
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMapKey(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 1947
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1949
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapKeyIsMutable()V

    .line 1950
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMapValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2084
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2085
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMapValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 2072
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2074
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureMapValueIsMutable()V

    .line 2075
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setString(Ljava/lang/String;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 1759
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1761
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1762
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    return-object p0
.end method

.method public setStringBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 1781
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1783
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1784
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->string_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateToken(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    .line 2425
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2426
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateToken(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 2413
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 2415
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->ensureTemplateTokenIsMutable()V

    .line 2416
    iget-object v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setType(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 1696
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1698
    :cond_0
    iget v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->bitField0_:I

    .line 1699
    iput-object p1, p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->type_:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    return-object p0
.end method
