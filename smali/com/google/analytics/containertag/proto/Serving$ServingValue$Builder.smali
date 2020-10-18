.class public final Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$ServingValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$ServingValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/analytics/containertag/proto/Serving$ServingValue;",
        "Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$ServingValueOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private listItem_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private macroNameReference_:I

.field private macroReference_:I

.field private mapKey_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mapValue_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private templateToken_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1715
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1869
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    .line 1935
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    .line 2001
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    .line 2099
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    .line 1716
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$1000()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1708
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1722
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;-><init>()V

    return-object v0
.end method

.method private ensureListItemIsMutable()V
    .locals 3

    .line 1871
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1872
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    .line 1873
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMapKeyIsMutable()V
    .locals 3

    .line 1937
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1938
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    .line 1939
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMapValueIsMutable()V
    .locals 3

    .line 2003
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2004
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    .line 2005
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTemplateTokenIsMutable()V
    .locals 3

    .line 2101
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 2102
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    .line 2103
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllListItem(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;"
        }
    .end annotation

    .line 1919
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureListItemIsMutable()V

    .line 1920
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapKey(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;"
        }
    .end annotation

    .line 1985
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapKeyIsMutable()V

    .line 1986
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMapValue(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;"
        }
    .end annotation

    .line 2051
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapValueIsMutable()V

    .line 2052
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllTemplateToken(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;"
        }
    .end annotation

    .line 2149
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureTemplateTokenIsMutable()V

    .line 2150
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addListItem(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1909
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureListItemIsMutable()V

    .line 1910
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapKey(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1975
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapKeyIsMutable()V

    .line 1976
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMapValue(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2041
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapValueIsMutable()V

    .line 2042
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTemplateToken(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2139
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureTemplateTokenIsMutable()V

    .line 2140
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 2

    .line 1751
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    .line 1752
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1753
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 5

    .line 1759
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V

    .line 1760
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1762
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1763
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    .line 1764
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1766
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1202(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;

    .line 1767
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 1768
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    .line 1769
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1771
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1302(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;

    .line 1772
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 1773
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    .line 1774
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1776
    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1402(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 1780
    :goto_0
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroReference_:I

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1502(Lcom/google/analytics/containertag/proto/Serving$ServingValue;I)I

    .line 1781
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 1782
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    .line 1783
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1785
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1602(Lcom/google/analytics/containertag/proto/Serving$ServingValue;Ljava/util/List;)Ljava/util/List;

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    or-int/lit8 v3, v3, 0x2

    .line 1789
    :cond_5
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroNameReference_:I

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1702(Lcom/google/analytics/containertag/proto/Serving$ServingValue;I)I

    .line 1790
    invoke-static {v0, v3}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1802(Lcom/google/analytics/containertag/proto/Serving$ServingValue;I)I

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 2

    .line 1726
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .line 1727
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    .line 1728
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1729
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    .line 1730
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1731
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    .line 1732
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 1733
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroReference_:I

    .line 1734
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1735
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    .line 1736
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 1737
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroNameReference_:I

    .line 1738
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearListItem()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1929
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    .line 1930
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMacroNameReference()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2191
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2192
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroNameReference_:I

    return-object p0
.end method

.method public clearMacroReference()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2093
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 2094
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroReference_:I

    return-object p0
.end method

.method public clearMapKey()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1995
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    .line 1996
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMapValue()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2061
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    .line 2062
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTemplateToken()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    .line 2160
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 2

    .line 1743
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

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

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    .locals 1

    .line 1747
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    return-object v0
.end method

.method public getListItem(I)I
    .locals 1

    .line 1893
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getListItemCount()I
    .locals 1

    .line 1887
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMacroNameReference()I
    .locals 1

    .line 2176
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroNameReference_:I

    return v0
.end method

.method public getMacroReference()I
    .locals 1

    .line 2078
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroReference_:I

    return v0
.end method

.method public getMapKey(I)I
    .locals 1

    .line 1959
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMapKeyCount()I
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1947
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMapValue(I)I
    .locals 1

    .line 2025
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMapValueCount()I
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2013
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateToken(I)I
    .locals 1

    .line 2123
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getTemplateTokenCount()I
    .locals 1

    .line 2117
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2111
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasMacroNameReference()Z
    .locals 2

    .line 2170
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

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

.method public hasMacroReference()Z
    .locals 2

    .line 2072
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 2

    .line 1795
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1796
    :cond_0
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1200(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1797
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1798
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1200(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    .line 1799
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    goto :goto_0

    .line 1801
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureListItemIsMutable()V

    .line 1802
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1200(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1806
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1300(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1807
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1808
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1300(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    .line 1809
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    goto :goto_1

    .line 1811
    :cond_3
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapKeyIsMutable()V

    .line 1812
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1300(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1816
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1400(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1817
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1818
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1400(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    .line 1819
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    goto :goto_2

    .line 1821
    :cond_5
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapValueIsMutable()V

    .line 1822
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1400(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1826
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroReference()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1827
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroReference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->setMacroReference(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    .line 1829
    :cond_7
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1600(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1830
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1831
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1600(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    .line 1832
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    goto :goto_3

    .line 1834
    :cond_8
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureTemplateTokenIsMutable()V

    .line 1835
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1600(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1839
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->hasMacroNameReference()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1840
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->getMacroNameReference()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->setMacroNameReference(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    .line 1842
    :cond_a
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->access$1900(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1856
    :try_start_0
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1862
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1858
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/containertag/proto/Serving$ServingValue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1859
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 1862
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

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

    .line 1708
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 1708
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$ServingValue;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$ServingValue;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

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

    .line 1708
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setListItem(II)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1900
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureListItemIsMutable()V

    .line 1901
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->listItem_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMacroNameReference(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2182
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 2183
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroNameReference_:I

    return-object p0
.end method

.method public setMacroReference(I)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2084
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->bitField0_:I

    .line 2085
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->macroReference_:I

    return-object p0
.end method

.method public setMapKey(II)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 1966
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapKeyIsMutable()V

    .line 1967
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapKey_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMapValue(II)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2032
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureMapValueIsMutable()V

    .line 2033
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->mapValue_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateToken(II)Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;
    .locals 1

    .line 2130
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->ensureTemplateTokenIsMutable()V

    .line 2131
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$ServingValue$Builder;->templateToken_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
