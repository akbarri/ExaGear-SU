.class public final Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$RuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/analytics/containertag/proto/Serving$Rule;",
        "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$RuleOrBuilder;"
    }
.end annotation


# instance fields
.field private addMacroRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addMacro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addTagRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private addTag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private negativePredicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private positivePredicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeMacroRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeMacro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeTagRuleName_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeTag_:Ljava/util/List;
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

    .line 4591
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4827
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 5025
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 5091
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 5157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 5223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 5289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 5355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 5421
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 4592
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$3800()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4584
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4598
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAddMacroIsMutable()V
    .locals 3

    .line 5225
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 5227
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureAddMacroRuleNameIsMutable()V
    .locals 3

    .line 5357
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5358
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 5359
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureAddTagIsMutable()V
    .locals 3

    .line 4961
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4962
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 4963
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureAddTagRuleNameIsMutable()V
    .locals 3

    .line 5093
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5094
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 5095
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureNegativePredicateIsMutable()V
    .locals 3

    .line 4895
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4896
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4897
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePositivePredicateIsMutable()V
    .locals 3

    .line 4829
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 4830
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4831
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureRemoveMacroIsMutable()V
    .locals 3

    .line 5291
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5292
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 5293
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureRemoveMacroRuleNameIsMutable()V
    .locals 3

    .line 5423
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5424
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 5425
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureRemoveTagIsMutable()V
    .locals 3

    .line 5027
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5028
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 5029
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureRemoveTagRuleNameIsMutable()V
    .locals 3

    .line 5159
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 5160
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 5161
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addAddMacro(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5263
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroIsMutable()V

    .line 5264
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAddMacroRuleName(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5395
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroRuleNameIsMutable()V

    .line 5396
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAddTag(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4999
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagIsMutable()V

    .line 5000
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAddTagRuleName(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5131
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagRuleNameIsMutable()V

    .line 5132
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAllAddMacro(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5273
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroIsMutable()V

    .line 5274
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllAddMacroRuleName(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5405
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroRuleNameIsMutable()V

    .line 5406
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllAddTag(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5009
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagIsMutable()V

    .line 5010
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllAddTagRuleName(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5141
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagRuleNameIsMutable()V

    .line 5142
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllNegativePredicate(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 4943
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureNegativePredicateIsMutable()V

    .line 4944
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllPositivePredicate(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 4877
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensurePositivePredicateIsMutable()V

    .line 4878
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllRemoveMacro(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5339
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroIsMutable()V

    .line 5340
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllRemoveMacroRuleName(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5471
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroRuleNameIsMutable()V

    .line 5472
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllRemoveTag(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5075
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagIsMutable()V

    .line 5076
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllRemoveTagRuleName(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;"
        }
    .end annotation

    .line 5207
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagRuleNameIsMutable()V

    .line 5208
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addNegativePredicate(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4933
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureNegativePredicateIsMutable()V

    .line 4934
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPositivePredicate(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4867
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensurePositivePredicateIsMutable()V

    .line 4868
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRemoveMacro(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5329
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroIsMutable()V

    .line 5330
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRemoveMacroRuleName(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5461
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroRuleNameIsMutable()V

    .line 5462
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRemoveTag(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5065
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagIsMutable()V

    .line 5066
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRemoveTagRuleName(I)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5197
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagRuleNameIsMutable()V

    .line 5198
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 2

    .line 4635
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    .line 4636
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4637
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 3

    .line 4643
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Rule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V

    .line 4644
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4645
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 4646
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4647
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4649
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4002(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4650
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 4651
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4652
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4654
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4102(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4655
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 4656
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 4657
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4659
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4202(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4660
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    .line 4661
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 4662
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4664
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4302(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4665
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 4666
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 4667
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4669
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4402(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4670
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 4671
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 4672
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4674
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4502(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4675
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    .line 4676
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 4677
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4679
    :cond_6
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4602(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4680
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    .line 4681
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 4682
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4684
    :cond_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4702(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4685
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 4686
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 4687
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4689
    :cond_8
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4802(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    .line 4690
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    .line 4691
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 4692
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4694
    :cond_9
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4902(Lcom/google/analytics/containertag/proto/Serving$Rule;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4602
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .line 4603
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4604
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4605
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4606
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4607
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 4608
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4609
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 4610
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4611
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 4612
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4613
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 4614
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 4616
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4617
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 4618
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4619
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 4620
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    .line 4621
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 4622
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAddMacro()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 5284
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAddMacroRuleName()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 5416
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAddTag()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5019
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 5020
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearAddTagRuleName()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 5152
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearNegativePredicate()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4953
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4954
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearPositivePredicate()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4887
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4888
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRemoveMacro()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 5350
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRemoveMacroRuleName()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 5482
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRemoveTag()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5085
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 5086
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearRemoveTagRuleName()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5217
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 5218
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 2

    .line 4627
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

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

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddMacro(I)I
    .locals 1

    .line 5247
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddMacroCount()I
    .locals 1

    .line 5241
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5235
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAddMacroRuleName(I)I
    .locals 1

    .line 5379
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddMacroRuleNameCount()I
    .locals 1

    .line 5373
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddMacroRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5367
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAddTag(I)I
    .locals 1

    .line 4983
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddTagCount()I
    .locals 1

    .line 4977
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4971
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAddTagRuleName(I)I
    .locals 1

    .line 5115
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getAddTagRuleNameCount()I
    .locals 1

    .line 5109
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAddTagRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5103
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Rule;
    .locals 1

    .line 4631
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 4584
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    return-object v0
.end method

.method public getNegativePredicate(I)I
    .locals 1

    .line 4917
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getNegativePredicateCount()I
    .locals 1

    .line 4911
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNegativePredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4905
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositivePredicate(I)I
    .locals 1

    .line 4851
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getPositivePredicateCount()I
    .locals 1

    .line 4845
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPositivePredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4839
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveMacro(I)I
    .locals 1

    .line 5313
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveMacroCount()I
    .locals 1

    .line 5307
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5301
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveMacroRuleName(I)I
    .locals 1

    .line 5445
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveMacroRuleNameCount()I
    .locals 1

    .line 5439
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveMacroRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5433
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveTag(I)I
    .locals 1

    .line 5049
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveTagCount()I
    .locals 1

    .line 5043
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5037
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveTagRuleName(I)I
    .locals 1

    .line 5181
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getRemoveTagRuleNameCount()I
    .locals 1

    .line 5175
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRemoveTagRuleNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5169
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 2

    .line 4699
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Rule;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Rule;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 4700
    :cond_0
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4701
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4702
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    .line 4703
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_0

    .line 4705
    :cond_1
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensurePositivePredicateIsMutable()V

    .line 4706
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4710
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4100(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4711
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4712
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4100(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    .line 4713
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_1

    .line 4715
    :cond_3
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureNegativePredicateIsMutable()V

    .line 4716
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4100(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4720
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4200(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4721
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4722
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4200(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    .line 4723
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_2

    .line 4725
    :cond_5
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagIsMutable()V

    .line 4726
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4200(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4730
    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4300(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4731
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4732
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4300(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    .line 4733
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_3

    .line 4735
    :cond_7
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagIsMutable()V

    .line 4736
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4300(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4740
    :cond_8
    :goto_3
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4400(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 4741
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4742
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4400(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    .line 4743
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_4

    .line 4745
    :cond_9
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagRuleNameIsMutable()V

    .line 4746
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4400(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4750
    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4500(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4751
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4752
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4500(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    .line 4753
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_5

    .line 4755
    :cond_b
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagRuleNameIsMutable()V

    .line 4756
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4500(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4760
    :cond_c
    :goto_5
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4600(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 4761
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4762
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4600(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    .line 4763
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_6

    .line 4765
    :cond_d
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroIsMutable()V

    .line 4766
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4600(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4770
    :cond_e
    :goto_6
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4700(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4771
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4772
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4700(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    .line 4773
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_7

    .line 4775
    :cond_f
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroIsMutable()V

    .line 4776
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4700(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4780
    :cond_10
    :goto_7
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4800(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 4781
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4782
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4800(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    .line 4783
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_8

    .line 4785
    :cond_11
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroRuleNameIsMutable()V

    .line 4786
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4800(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4790
    :cond_12
    :goto_8
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4900(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 4791
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4792
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4900(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    .line 4793
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->bitField0_:I

    goto :goto_9

    .line 4795
    :cond_13
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroRuleNameIsMutable()V

    .line 4796
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$4900(Lcom/google/analytics/containertag/proto/Serving$Rule;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4800
    :cond_14
    :goto_9
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Rule;->access$5000(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4814
    :try_start_0
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$Rule;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Rule;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 4820
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4816
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/containertag/proto/Serving$Rule;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4817
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 4820
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

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

    .line 4584
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 4584
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Rule;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Rule;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

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

    .line 4584
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAddMacro(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5254
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroIsMutable()V

    .line 5255
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacro_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAddMacroRuleName(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5386
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddMacroRuleNameIsMutable()V

    .line 5387
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addMacroRuleName_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAddTag(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4990
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagIsMutable()V

    .line 4991
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTag_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAddTagRuleName(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5122
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureAddTagRuleNameIsMutable()V

    .line 5123
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->addTagRuleName_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setNegativePredicate(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4924
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureNegativePredicateIsMutable()V

    .line 4925
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->negativePredicate_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPositivePredicate(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 4858
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensurePositivePredicateIsMutable()V

    .line 4859
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->positivePredicate_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRemoveMacro(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5320
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroIsMutable()V

    .line 5321
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacro_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRemoveMacroRuleName(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5452
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveMacroRuleNameIsMutable()V

    .line 5453
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeMacroRuleName_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRemoveTag(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5056
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagIsMutable()V

    .line 5057
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTag_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setRemoveTagRuleName(II)Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;
    .locals 1

    .line 5188
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->ensureRemoveTagRuleNameIsMutable()V

    .line 5189
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Rule$Builder;->removeTagRuleName_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
