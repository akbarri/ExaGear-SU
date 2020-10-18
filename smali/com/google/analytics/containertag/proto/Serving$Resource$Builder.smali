.class public final Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$ResourceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/analytics/containertag/proto/Serving$Resource;",
        "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$ResourceOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private enableAutoEventTracking_:Z

.field private key_:Lcom/google/tagmanager/protobuf/LazyStringList;

.field private liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

.field private macro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private malwareScanAuthCode_:Ljava/lang/Object;

.field private predicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private previewAuthCode_:Ljava/lang/Object;

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;"
        }
    .end annotation
.end field

.field private reportingSampleRate_:F

.field private resourceFormatVersion_:I

.field private rule_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private templateVersionSet_:Ljava/lang/Object;

.field private usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7554
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7870
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7963
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 8088
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 8213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 8338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 8463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 8588
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    const-string v0, ""

    .line 8713
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    const-string v0, ""

    .line 8789
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    const-string v0, "0"

    .line 8865
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    const-string v0, ""

    .line 8941
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    .line 9017
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 9141
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7555
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$6000()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 7547
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 7561
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;-><init>()V

    return-object v0
.end method

.method private ensureKeyIsMutable()V
    .locals 3

    .line 7872
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 7873
    new-instance v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7874
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMacroIsMutable()V
    .locals 3

    .line 8216
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 8217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 8218
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePredicateIsMutable()V
    .locals 3

    .line 8466
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 8467
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 8468
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePropertyIsMutable()V
    .locals 3

    .line 8091
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 8092
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 8093
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureRuleIsMutable()V
    .locals 3

    .line 8591
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 8592
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 8593
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTagIsMutable()V
    .locals 3

    .line 8341
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 8342
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 8343
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureUsageContextIsMutable()V
    .locals 3

    .line 9143
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 9144
    new-instance v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 9145
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureValueIsMutable()V
    .locals 3

    .line 7966
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 7967
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 7968
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAllKey(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 7934
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureKeyIsMutable()V

    .line 7935
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMacro(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 8313
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8314
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllPredicate(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 8563
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8564
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllProperty(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 8188
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8189
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllRule(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 8688
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8689
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllTag(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 8438
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8439
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllUsageContext(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 9205
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureUsageContextIsMutable()V

    .line 9206
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllValue(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;"
        }
    .end annotation

    .line 8063
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 8064
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addKey(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 7922
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 7924
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureKeyIsMutable()V

    .line 7925
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addKeyBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 7955
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 7957
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureKeyIsMutable()V

    .line 7958
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-object p0
.end method

.method public addMacro(ILcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8303
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8304
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addMacro(ILcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8281
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8283
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8284
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addMacro(Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8293
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8294
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMacro(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8268
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8270
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8271
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPredicate(ILcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8553
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8554
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addPredicate(ILcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8531
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8533
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8534
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addPredicate(Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8543
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8544
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPredicate(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8518
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8520
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8521
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProperty(ILcom/google/analytics/containertag/proto/Serving$Property$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8178
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8179
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$Property$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addProperty(ILcom/google/analytics/containertag/proto/Serving$Property;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8156
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8158
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8159
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addProperty(Lcom/google/analytics/containertag/proto/Serving$Property$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8168
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8169
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Property$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProperty(Lcom/google/analytics/containertag/proto/Serving$Property;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8143
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8145
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8146
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRule(ILcom/google/analytics/containertag/proto/Serving$Rule$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8678
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8679
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addRule(ILcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8656
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8658
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8659
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addRule(Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8668
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8669
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRule(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8643
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8645
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8646
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTag(ILcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8428
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8429
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addTag(ILcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8406
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8408
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8409
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addTag(Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8418
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8419
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTag(Lcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8393
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8395
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8396
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUsageContext(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 9193
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 9195
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureUsageContextIsMutable()V

    .line 9196
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUsageContextBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 9226
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 9228
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureUsageContextIsMutable()V

    .line 9229
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Lcom/google/tagmanager/protobuf/ByteString;)V

    return-object p0
.end method

.method public addValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8053
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 8054
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8031
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8033
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 8034
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public addValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8043
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 8044
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8018
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8020
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 8021
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 2

    .line 7610
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    .line 7611
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7612
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 5

    .line 7618
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Resource;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V

    .line 7619
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7621
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 7622
    new-instance v2, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v2, v4}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7624
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7626
    :cond_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6202(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/tagmanager/protobuf/LazyStringList;)Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7627
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 7628
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 7629
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7631
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6302(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7632
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    .line 7633
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 7634
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7636
    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6402(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7637
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    .line 7638
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 7639
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7641
    :cond_3
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6502(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7642
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    .line 7643
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 7644
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7646
    :cond_4
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6602(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7647
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    .line 7648
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 7649
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7651
    :cond_5
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6702(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    .line 7652
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v4, 0x40

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_6

    .line 7653
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 7654
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7656
    :cond_6
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6802(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    .line 7660
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6902(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x100

    const/16 v4, 0x100

    if-ne v2, v4, :cond_8

    or-int/lit8 v3, v3, 0x2

    .line 7664
    :cond_8
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7002(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x200

    const/16 v4, 0x200

    if-ne v2, v4, :cond_9

    or-int/lit8 v3, v3, 0x4

    .line 7668
    :cond_9
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7102(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x400

    const/16 v4, 0x400

    if-ne v2, v4, :cond_a

    or-int/lit8 v3, v3, 0x8

    .line 7672
    :cond_a
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7202(Lcom/google/analytics/containertag/proto/Serving$Resource;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v2, v1, 0x800

    const/16 v4, 0x800

    if-ne v2, v4, :cond_b

    or-int/lit8 v3, v3, 0x10

    .line 7676
    :cond_b
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7302(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    and-int/lit16 v2, v1, 0x1000

    const/16 v4, 0x1000

    if-ne v2, v4, :cond_c

    or-int/lit8 v3, v3, 0x20

    .line 7680
    :cond_c
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->reportingSampleRate_:F

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7402(Lcom/google/analytics/containertag/proto/Serving$Resource;F)F

    and-int/lit16 v2, v1, 0x2000

    const/16 v4, 0x2000

    if-ne v2, v4, :cond_d

    or-int/lit8 v3, v3, 0x40

    .line 7684
    :cond_d
    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->enableAutoEventTracking_:Z

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7502(Lcom/google/analytics/containertag/proto/Serving$Resource;Z)Z

    .line 7685
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v4, 0x4000

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_e

    .line 7686
    new-instance v2, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-direct {v2, v4}, Lcom/google/tagmanager/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    iput-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7688
    iget v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v2, v2, -0x4001

    iput v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7690
    :cond_e
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7602(Lcom/google/analytics/containertag/proto/Serving$Resource;Lcom/google/tagmanager/protobuf/LazyStringList;)Lcom/google/tagmanager/protobuf/LazyStringList;

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    or-int/lit16 v3, v3, 0x80

    .line 7694
    :cond_f
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->resourceFormatVersion_:I

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7702(Lcom/google/analytics/containertag/proto/Serving$Resource;I)I

    .line 7695
    invoke-static {v0, v3}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7802(Lcom/google/analytics/containertag/proto/Serving$Resource;I)I

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 2

    .line 7565
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .line 7566
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7567
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7568
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 7569
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 7571
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 7573
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 7575
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7576
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 7577
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7578
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 7579
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const-string v0, ""

    .line 7580
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    .line 7581
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const-string v0, ""

    .line 7582
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 7583
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const-string v0, "0"

    .line 7584
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    .line 7585
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const-string v0, ""

    .line 7586
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    .line 7587
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7588
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 7589
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7590
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->reportingSampleRate_:F

    .line 7591
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 7592
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->enableAutoEventTracking_:Z

    .line 7593
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7594
    sget-object v1, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7595
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7596
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->resourceFormatVersion_:I

    .line 7597
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEnableAutoEventTracking()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 9135
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9136
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->enableAutoEventTracking_:Z

    return-object p0
.end method

.method public clearKey()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 7944
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7945
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearLiveJsCacheOption()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 9071
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 9073
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMacro()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 8324
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMalwareScanAuthCode()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8846
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8847
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getMalwareScanAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearPredicate()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8573
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 8574
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearPreviewAuthCode()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8770
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8771
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getPreviewAuthCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearProperty()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 8199
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearReportingSampleRate()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 9103
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9104
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->reportingSampleRate_:F

    return-object p0
.end method

.method public clearResourceFormatVersion()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 2

    .line 9260
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 9261
    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->resourceFormatVersion_:I

    return-object p0
.end method

.method public clearRule()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8698
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 8699
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTag()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8448
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 8449
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearTemplateVersionSet()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8922
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8923
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getTemplateVersionSet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUsageContext()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 9215
    sget-object v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/tagmanager/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 9216
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearValue()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8073
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 8074
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearVersion()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8998
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8999
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 2

    .line 7602
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

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

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    .line 7606
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 7547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    return-object v0
.end method

.method public getEnableAutoEventTracking()Z
    .locals 1

    .line 9120
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->enableAutoEventTracking_:Z

    return v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 7894
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getKeyBytes(I)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1

    .line 7901
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteString(I)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getKeyCount()I
    .locals 1

    .line 7888
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7882
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/Serving$CacheOption;
    .locals 1

    .line 9028
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    return-object v0
.end method

.method public getMacro(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    .line 8238
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p1
.end method

.method public getMacroCount()I
    .locals 1

    .line 8232
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 8226
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMalwareScanAuthCode()Ljava/lang/String;
    .locals 2

    .line 8800
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 8801
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8802
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 8804
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8805
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8806
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8810
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMalwareScanAuthCodeBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 8818
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 8819
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8820
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 8823
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object v0

    .line 8826
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getPredicate(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    .line 8488
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p1
.end method

.method public getPredicateCount()I
    .locals 1

    .line 8482
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 8476
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewAuthCode()Ljava/lang/String;
    .locals 2

    .line 8724
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    .line 8725
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8726
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 8728
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8729
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8730
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8734
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewAuthCodeBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 8742
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    .line 8743
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8744
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 8747
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    return-object v0

    .line 8750
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getProperty(I)Lcom/google/analytics/containertag/proto/Serving$Property;
    .locals 1

    .line 8113
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Property;

    return-object p1
.end method

.method public getPropertyCount()I
    .locals 1

    .line 8107
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Property;",
            ">;"
        }
    .end annotation

    .line 8101
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReportingSampleRate()F
    .locals 1

    .line 9088
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->reportingSampleRate_:F

    return v0
.end method

.method public getResourceFormatVersion()I
    .locals 1

    .line 9245
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->resourceFormatVersion_:I

    return v0
.end method

.method public getRule(I)Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    .line 8613
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    return-object p1
.end method

.method public getRuleCount()I
    .locals 1

    .line 8607
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$Rule;",
            ">;"
        }
    .end annotation

    .line 8601
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTag(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;
    .locals 1

    .line 8363
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    return-object p1
.end method

.method public getTagCount()I
    .locals 1

    .line 8357
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/Serving$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 8351
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateVersionSet()Ljava/lang/String;
    .locals 2

    .line 8876
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    .line 8877
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8878
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 8880
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8881
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8882
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8886
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateVersionSetBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 8894
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    .line 8895
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8896
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 8899
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    return-object v0

    .line 8902
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getUsageContext(I)Ljava/lang/String;
    .locals 1

    .line 9165
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getUsageContextBytes(I)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 1

    .line 9172
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteString(I)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getUsageContextCount()I
    .locals 1

    .line 9159
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getUsageContextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9153
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1

    .line 7988
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object p1
.end method

.method public getValueCount()I
    .locals 1

    .line 7982
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 7976
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 8952
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    .line 8953
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 8954
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 8956
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 8957
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8958
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 8962
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 8970
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    .line 8971
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8972
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 8975
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 8978
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public hasEnableAutoEventTracking()Z
    .locals 2

    .line 9114
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLiveJsCacheOption()Z
    .locals 2

    .line 9022
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

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

.method public hasMalwareScanAuthCode()Z
    .locals 2

    .line 8794
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

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

.method public hasPreviewAuthCode()Z
    .locals 2

    .line 8718
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

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

.method public hasReportingSampleRate()Z
    .locals 2

    .line 9082
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResourceFormatVersion()Z
    .locals 2

    .line 9239
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTemplateVersionSet()Z
    .locals 2

    .line 8870
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersion()Z
    .locals 2

    .line 8946
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x400

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
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 7818
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getValueCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7819
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 7824
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getPropertyCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7825
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getProperty(I)Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$Property;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 7830
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getMacroCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 7831
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getMacro(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    .line 7836
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getTagCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 7837
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getTag(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v0

    .line 7842
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getPredicateCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 7843
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getPredicate(I)Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    return v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 2

    .line 7700
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7701
    :cond_0
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7702
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7703
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7704
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_0

    .line 7706
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureKeyIsMutable()V

    .line 7707
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 7711
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6300(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7712
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7713
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6300(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    .line 7714
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_1

    .line 7716
    :cond_3
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 7717
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6300(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7721
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6400(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7722
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7723
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6400(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    .line 7724
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_2

    .line 7726
    :cond_5
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 7727
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6400(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7731
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6500(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 7732
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 7733
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6500(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    .line 7734
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_3

    .line 7736
    :cond_7
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 7737
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6500(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7741
    :cond_8
    :goto_3
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 7742
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7743
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    .line 7744
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_4

    .line 7746
    :cond_9
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 7747
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7751
    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6700(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 7752
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7753
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6700(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    .line 7754
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_5

    .line 7756
    :cond_b
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 7757
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6700(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7761
    :cond_c
    :goto_5
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6800(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 7762
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7763
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6800(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    .line 7764
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_6

    .line 7766
    :cond_d
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 7767
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6800(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7771
    :cond_e
    :goto_6
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasPreviewAuthCode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7772
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7773
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$6900(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    .line 7776
    :cond_f
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasMalwareScanAuthCode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 7777
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7778
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7000(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 7781
    :cond_10
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasTemplateVersionSet()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7782
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7783
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7100(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    .line 7786
    :cond_11
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7787
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 7788
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7200(Lcom/google/analytics/containertag/proto/Serving$Resource;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    .line 7791
    :cond_12
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasLiveJsCacheOption()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7792
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeLiveJsCacheOption(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    .line 7794
    :cond_13
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasReportingSampleRate()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 7795
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getReportingSampleRate()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->setReportingSampleRate(F)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    .line 7797
    :cond_14
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasEnableAutoEventTracking()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 7798
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getEnableAutoEventTracking()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->setEnableAutoEventTracking(Z)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    .line 7800
    :cond_15
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 7801
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7802
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 7803
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    goto :goto_7

    .line 7805
    :cond_16
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureUsageContextIsMutable()V

    .line 7806
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7600(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 7810
    :cond_17
    :goto_7
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->hasResourceFormatVersion()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 7811
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getResourceFormatVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->setResourceFormatVersion(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    .line 7813
    :cond_18
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource;->access$7900(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7857
    :try_start_0
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$Resource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Resource;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7863
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7859
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/containertag/proto/Serving$Resource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7860
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 7863
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

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

    .line 7547
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 7547
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

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

    .line 7547
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeLiveJsCacheOption(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 3

    .line 9056
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9058
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$CacheOption;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    goto :goto_0

    .line 9061
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 9064
    :goto_0
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public removeMacro(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8332
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8333
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removePredicate(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8582
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8583
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeProperty(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8207
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8208
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeRule(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8707
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8708
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeTag(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8457
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8458
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public removeValue(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8082
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 8083
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public setEnableAutoEventTracking(Z)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 9126
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 9127
    iput-boolean p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->enableAutoEventTracking_:Z

    return-object p0
.end method

.method public setKey(ILjava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 7909
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 7911
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureKeyIsMutable()V

    .line 7912
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setLiveJsCacheOption(Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 0

    .line 9047
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$CacheOption$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 9049
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public setLiveJsCacheOption(Lcom/google/analytics/containertag/proto/Serving$CacheOption;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 9035
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 9037
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/Serving$CacheOption;

    .line 9039
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    return-object p0
.end method

.method public setMacro(ILcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8258
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8259
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMacro(ILcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8246
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8248
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureMacroIsMutable()V

    .line 8249
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->macro_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMalwareScanAuthCode(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8835
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8837
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8838
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setMalwareScanAuthCodeBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8857
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8859
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8860
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPredicate(ILcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8508
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8509
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPredicate(ILcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8496
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8498
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePredicateIsMutable()V

    .line 8499
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPreviewAuthCode(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8759
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8761
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8762
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPreviewAuthCodeBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8781
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8783
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8784
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->previewAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setProperty(ILcom/google/analytics/containertag/proto/Serving$Property$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8133
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8134
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$Property$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Property;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setProperty(ILcom/google/analytics/containertag/proto/Serving$Property;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8121
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8123
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensurePropertyIsMutable()V

    .line 8124
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->property_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setReportingSampleRate(F)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 9094
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 9095
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->reportingSampleRate_:F

    return-object p0
.end method

.method public setResourceFormatVersion(I)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 2

    .line 9251
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 9252
    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->resourceFormatVersion_:I

    return-object p0
.end method

.method public setRule(ILcom/google/analytics/containertag/proto/Serving$Rule$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8633
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8634
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRule(ILcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8621
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8623
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureRuleIsMutable()V

    .line 8624
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->rule_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTag(ILcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8383
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8384
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/containertag/proto/Serving$FunctionCall$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$FunctionCall;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTag(ILcom/google/analytics/containertag/proto/Serving$FunctionCall;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 8371
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8373
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureTagIsMutable()V

    .line 8374
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->tag_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateVersionSet(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8911
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8913
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8914
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateVersionSetBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8933
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8935
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8936
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->templateVersionSet_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUsageContext(ILjava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 9180
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 9182
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureUsageContextIsMutable()V

    .line 9183
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    .line 8008
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 8009
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(ILcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p2, :cond_0

    .line 7996
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 7998
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->ensureValueIsMutable()V

    .line 7999
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 8987
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 8989
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 8990
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method public setVersionBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 9009
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 9011
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->bitField0_:I

    .line 9012
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->version_:Ljava/lang/Object;

    return-object p0
.end method
