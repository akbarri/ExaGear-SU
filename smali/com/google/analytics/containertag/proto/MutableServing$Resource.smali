.class public final Lcom/google/analytics/containertag/proto/MutableServing$Resource;
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
    name = "Resource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite<",
        "Lcom/google/analytics/containertag/proto/MutableServing$Resource;",
        ">;",
        "Lcom/google/tagmanager/protobuf/MutableMessageLite;"
    }
.end annotation


# static fields
.field public static final ENABLE_AUTO_EVENT_TRACKING_FIELD_NUMBER:I = 0x12

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field public static final LIVE_JS_CACHE_OPTION_FIELD_NUMBER:I = 0xe

.field public static final MACRO_FIELD_NUMBER:I = 0x4

.field public static final MALWARE_SCAN_AUTH_CODE_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/tagmanager/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREDICATE_FIELD_NUMBER:I = 0x6

.field public static final PREVIEW_AUTH_CODE_FIELD_NUMBER:I = 0x9

.field public static final PROPERTY_FIELD_NUMBER:I = 0x3

.field public static final REPORTING_SAMPLE_RATE_FIELD_NUMBER:I = 0xf

.field public static final RESOURCE_FORMAT_VERSION_FIELD_NUMBER:I = 0x11

.field public static final RULE_FIELD_NUMBER:I = 0x7

.field public static final TAG_FIELD_NUMBER:I = 0x5

.field public static final TEMPLATE_VERSION_SET_FIELD_NUMBER:I = 0xc

.field public static final USAGE_CONTEXT_FIELD_NUMBER:I = 0x10

.field public static final VALUE_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0xd

.field private static final defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

.field private static volatile immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private enableAutoEventTracking_:Z

.field private key_:Lcom/google/tagmanager/protobuf/LazyStringList;

.field private liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

.field private macro_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private malwareScanAuthCode_:Ljava/lang/Object;

.field private predicate_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation
.end field

.field private previewAuthCode_:Ljava/lang/Object;

.field private property_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$Property;",
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
            "Lcom/google/analytics/containertag/proto/MutableServing$Rule;",
            ">;"
        }
    .end annotation
.end field

.field private tag_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
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
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6026
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 6027
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->initFields()V

    .line 6028
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->makeImmutable()V

    .line 6029
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->internalNewParserForType(Lcom/google/tagmanager/protobuf/MutableMessageLite;)Lcom/google/tagmanager/protobuf/Parser;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 4097
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 4123
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 4247
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    .line 4346
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    .line 4445
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    .line 4544
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    .line 4643
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    .line 4742
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    .line 4841
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 4913
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    const-string v1, "0"

    .line 4985
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->byteArrayDefaultValue(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 5057
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    .line 5254
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 4097
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->initFields()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 4098
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;-><init>()V

    const/4 p1, 0x0

    .line 4123
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 4247
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    .line 4346
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    .line 4445
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    .line 4544
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    .line 4643
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    .line 4742
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    .line 4841
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 4913
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    const-string v0, "0"

    .line 4985
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->byteArrayDefaultValue(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 5057
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    .line 5254
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-void
.end method

.method private ensureKeyInitialized()V
    .locals 1

    .line 4125
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 4126
    new-instance v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    :cond_0
    return-void
.end method

.method private ensureLiveJsCacheOptionInitialized()V
    .locals 2

    .line 5131
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5132
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    :cond_0
    return-void
.end method

.method private ensureMacroInitialized()V
    .locals 1

    .line 4447
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensurePredicateInitialized()V
    .locals 1

    .line 4645
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensurePropertyInitialized()V
    .locals 1

    .line 4348
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureRuleInitialized()V
    .locals 1

    .line 4744
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureTagInitialized()V
    .locals 1

    .line 4546
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4547
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private ensureUsageContextInitialized()V
    .locals 1

    .line 5256
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 5257
    new-instance v0, Lcom/google/tagmanager/protobuf/LazyStringArrayList;

    invoke-direct {v0}, Lcom/google/tagmanager/protobuf/LazyStringArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    :cond_0
    return-void
.end method

.method private ensureValueInitialized()V
    .locals 1

    .line 4249
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4110
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 4106
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    return-void
.end method

.method public static newMessage()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4103
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addAllKey(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 4209
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4210
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 4211
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllMacro(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 4515
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4516
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureMacroInitialized()V

    .line 4517
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllPredicate(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 4713
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4714
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePredicateInitialized()V

    .line 4715
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllProperty(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableServing$Property;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 4416
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4417
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePropertyInitialized()V

    .line 4418
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllRule(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableServing$Rule;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 4812
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4813
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureRuleInitialized()V

    .line 4814
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllTag(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 4614
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4615
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureTagInitialized()V

    .line 4616
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllUsageContext(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 5340
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5341
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5342
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addAllValue(Ljava/lang/Iterable;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;"
        }
    .end annotation

    .line 4317
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4318
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureValueInitialized()V

    .line 4319
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addKey(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4188
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4189
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4190
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 4191
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addKeyAsBytes([B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4199
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4200
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4201
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 4202
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add([B)V

    return-object p0
.end method

.method public addMacro()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 2

    .line 4492
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4493
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureMacroInitialized()V

    .line 4494
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v0

    .line 4495
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addMacro(Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4502
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4504
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4506
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureMacroInitialized()V

    .line 4507
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPredicate()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 2

    .line 4690
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4691
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePredicateInitialized()V

    .line 4692
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v0

    .line 4693
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addPredicate(Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4700
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4702
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4704
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePredicateInitialized()V

    .line 4705
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addProperty()Lcom/google/analytics/containertag/proto/MutableServing$Property;
    .locals 2

    .line 4393
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4394
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePropertyInitialized()V

    .line 4395
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Property;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$Property;

    move-result-object v0

    .line 4396
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addProperty(Lcom/google/analytics/containertag/proto/MutableServing$Property;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4403
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4405
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4407
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePropertyInitialized()V

    .line 4408
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRule(Lcom/google/analytics/containertag/proto/MutableServing$Rule;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4799
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4801
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4803
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureRuleInitialized()V

    .line 4804
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRule()Lcom/google/analytics/containertag/proto/MutableServing$Rule;
    .locals 2

    .line 4789
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4790
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureRuleInitialized()V

    .line 4791
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Rule;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$Rule;

    move-result-object v0

    .line 4792
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTag()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 2

    .line 4591
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4592
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureTagInitialized()V

    .line 4593
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v0

    .line 4594
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTag(Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4601
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4603
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4605
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureTagInitialized()V

    .line 4606
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUsageContext(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5319
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 5320
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5321
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5322
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUsageContextAsBytes([B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5330
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 5331
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5332
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5333
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->add([B)V

    return-object p0
.end method

.method public addValue(Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4304
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4306
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4308
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureValueInitialized()V

    .line 4309
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 2

    .line 4294
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4295
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureValueInitialized()V

    .line 4296
    invoke-static {}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->newMessage()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v0

    .line 4297
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 3

    .line 5840
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5841
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;

    const/4 v0, 0x0

    .line 5842
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 5843
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    .line 5844
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    .line 5845
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    .line 5846
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    .line 5847
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    .line 5848
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    .line 5849
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 5850
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5851
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 5852
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5853
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTemplateVersionSetAsBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 5854
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5855
    sget-object v1, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    .line 5856
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5857
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 5858
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->clear()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 5860
    :cond_0
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/4 v1, 0x0

    .line 5861
    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->reportingSampleRate_:F

    .line 5862
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/4 v1, 0x0

    .line 5863
    iput-boolean v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->enableAutoEventTracking_:Z

    .line 5864
    iget v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v2, v2, -0x41

    iput v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5865
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    .line 5866
    iput v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->resourceFormatVersion_:I

    .line 5867
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 4092
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 4092
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clear()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    return-object v0
.end method

.method public clearEnableAutoEventTracking()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5247
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5248
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/4 v0, 0x0

    .line 5249
    iput-boolean v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->enableAutoEventTracking_:Z

    return-object p0
.end method

.method public clearKey()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4241
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 4242
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object p0
.end method

.method public clearLiveJsCacheOption()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 2

    .line 5175
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5176
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5177
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5178
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->clear()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    :cond_0
    return-object p0
.end method

.method public clearMacro()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4538
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 4539
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    return-object p0
.end method

.method public clearMalwareScanAuthCode()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4978
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4979
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 4980
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearPredicate()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4736
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 4737
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    return-object p0
.end method

.method public clearPreviewAuthCode()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4906
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4907
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 4908
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearProperty()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4439
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 4440
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    return-object p0
.end method

.method public clearReportingSampleRate()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5212
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5213
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/4 v0, 0x0

    .line 5214
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->reportingSampleRate_:F

    return-object p0
.end method

.method public clearResourceFormatVersion()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5406
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5407
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/4 v0, 0x0

    .line 5408
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->resourceFormatVersion_:I

    return-object p0
.end method

.method public clearRule()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4835
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 4836
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    return-object p0
.end method

.method public clearTag()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4637
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 4638
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    return-object p0
.end method

.method public clearTemplateVersionSet()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5050
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5051
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5052
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTemplateVersionSetAsBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearUsageContext()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5372
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 5373
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object p0
.end method

.method public clearValue()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4340
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 4341
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    return-object p0
.end method

.method public clearVersion()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5122
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5123
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5124
    sget-object v0, Lcom/google/tagmanager/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5442
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$Resource;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 4092
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clone()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

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

    .line 4092
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->clone()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5875
    :cond_0
    instance-of v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    if-nez v1, :cond_1

    .line 5876
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5878
    :cond_1
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 5881
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getKeyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getKeyList()Ljava/util/List;

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

    .line 5883
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getValueList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getValueList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 5885
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPropertyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPropertyList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 5887
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMacroList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMacroList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    .line 5889
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTagList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 5891
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPredicateList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPredicateList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    .line 5893
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getRuleList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getRuleList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    if-eqz v1, :cond_9

    .line 5895
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasPreviewAuthCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasPreviewAuthCode()Z

    move-result v3

    if-ne v1, v3, :cond_9

    move v1, v0

    goto :goto_7

    :cond_9
    move v1, v2

    .line 5896
    :goto_7
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasPreviewAuthCode()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 5897
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPreviewAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPreviewAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v0

    goto :goto_8

    :cond_a
    move v1, v2

    :cond_b
    :goto_8
    if-eqz v1, :cond_c

    .line 5900
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasMalwareScanAuthCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasMalwareScanAuthCode()Z

    move-result v3

    if-ne v1, v3, :cond_c

    move v1, v0

    goto :goto_9

    :cond_c
    move v1, v2

    .line 5901
    :goto_9
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasMalwareScanAuthCode()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_d

    .line 5902
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMalwareScanAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMalwareScanAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    goto :goto_a

    :cond_d
    move v1, v2

    :cond_e
    :goto_a
    if-eqz v1, :cond_f

    .line 5905
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasTemplateVersionSet()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasTemplateVersionSet()Z

    move-result v3

    if-ne v1, v3, :cond_f

    move v1, v0

    goto :goto_b

    :cond_f
    move v1, v2

    .line 5906
    :goto_b
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasTemplateVersionSet()Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v1, :cond_10

    .line 5907
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTemplateVersionSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTemplateVersionSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v0

    goto :goto_c

    :cond_10
    move v1, v2

    :cond_11
    :goto_c
    if-eqz v1, :cond_12

    .line 5910
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasVersion()Z

    move-result v3

    if-ne v1, v3, :cond_12

    move v1, v0

    goto :goto_d

    :cond_12
    move v1, v2

    .line 5911
    :goto_d
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasVersion()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v1, :cond_13

    .line 5912
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v0

    goto :goto_e

    :cond_13
    move v1, v2

    :cond_14
    :goto_e
    if-eqz v1, :cond_15

    .line 5915
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasLiveJsCacheOption()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasLiveJsCacheOption()Z

    move-result v3

    if-ne v1, v3, :cond_15

    move v1, v0

    goto :goto_f

    :cond_15
    move v1, v2

    .line 5916
    :goto_f
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasLiveJsCacheOption()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v1, :cond_16

    .line 5917
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v0

    goto :goto_10

    :cond_16
    move v1, v2

    :cond_17
    :goto_10
    if-eqz v1, :cond_18

    .line 5920
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasReportingSampleRate()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasReportingSampleRate()Z

    move-result v3

    if-ne v1, v3, :cond_18

    move v1, v0

    goto :goto_11

    :cond_18
    move v1, v2

    .line 5921
    :goto_11
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasReportingSampleRate()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v1, :cond_19

    .line 5922
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getReportingSampleRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getReportingSampleRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_19

    move v1, v0

    goto :goto_12

    :cond_19
    move v1, v2

    :cond_1a
    :goto_12
    if-eqz v1, :cond_1b

    .line 5927
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasEnableAutoEventTracking()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasEnableAutoEventTracking()Z

    move-result v3

    if-ne v1, v3, :cond_1b

    move v1, v0

    goto :goto_13

    :cond_1b
    move v1, v2

    .line 5928
    :goto_13
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasEnableAutoEventTracking()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v1, :cond_1c

    .line 5929
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getEnableAutoEventTracking()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getEnableAutoEventTracking()Z

    move-result v3

    if-ne v1, v3, :cond_1c

    move v1, v0

    goto :goto_14

    :cond_1c
    move v1, v2

    :cond_1d
    :goto_14
    if-eqz v1, :cond_1e

    .line 5932
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getUsageContextList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getUsageContextList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_15

    :cond_1e
    move v1, v2

    :goto_15
    if-eqz v1, :cond_1f

    .line 5934
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasResourceFormatVersion()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasResourceFormatVersion()Z

    move-result v3

    if-ne v1, v3, :cond_1f

    move v1, v0

    goto :goto_16

    :cond_1f
    move v1, v2

    .line 5935
    :goto_16
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasResourceFormatVersion()Z

    move-result v3

    if-eqz v3, :cond_21

    if-eqz v1, :cond_20

    .line 5936
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getResourceFormatVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getResourceFormatVersion()I

    move-result p1

    if-ne v1, p1, :cond_20

    move v1, v0

    goto :goto_17

    :cond_20
    move v1, v2

    :cond_21
    :goto_17
    return v1
.end method

.method public final getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4113
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->defaultInstance:Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 1

    .line 4092
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 4092
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    return-object v0
.end method

.method public getEnableAutoEventTracking()Z
    .locals 1

    .line 5232
    iget-boolean v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->enableAutoEventTracking_:Z

    return v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 4176
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getKeyAsBytes(I)[B
    .locals 1

    .line 4182
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getKeyCount()I
    .locals 1

    .line 4135
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v0

    :goto_0
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

    .line 4141
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 4142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4144
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKeyListAsBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 4150
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 4151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4153
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 5147
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    return-object v0
.end method

.method public getMacro(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 1

    .line 4480
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    return-object p1
.end method

.method public getMacroCount()I
    .locals 1

    .line 4457
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 4463
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4464
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4466
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMalwareScanAuthCode()Ljava/lang/String;
    .locals 2

    .line 4926
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 4927
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4928
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4930
    :cond_0
    check-cast v0, [B

    .line 4931
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 4933
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4934
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMalwareScanAuthCodeAsBytes()[B
    .locals 2

    .line 4943
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 4944
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4945
    check-cast v0, Ljava/lang/String;

    .line 4946
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4947
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object v0

    .line 4950
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getMutableKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4160
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4161
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 4162
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object v0
.end method

.method public getMutableKeyListAsBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 4168
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4169
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 4170
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableLiveJsCacheOption()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;
    .locals 1

    .line 5153
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5154
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureLiveJsCacheOptionInitialized()V

    .line 5155
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5156
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    return-object v0
.end method

.method public getMutableMacro(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 1

    .line 4486
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    return-object p1
.end method

.method public getMutableMacroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 4472
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4473
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureMacroInitialized()V

    .line 4474
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    return-object v0
.end method

.method public getMutablePredicate(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 1

    .line 4684
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    return-object p1
.end method

.method public getMutablePredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 4670
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4671
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePredicateInitialized()V

    .line 4672
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableProperty(I)Lcom/google/analytics/containertag/proto/MutableServing$Property;
    .locals 1

    .line 4387
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$Property;

    return-object p1
.end method

.method public getMutablePropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$Property;",
            ">;"
        }
    .end annotation

    .line 4373
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4374
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePropertyInitialized()V

    .line 4375
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableRule(I)Lcom/google/analytics/containertag/proto/MutableServing$Rule;
    .locals 1

    .line 4783
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$Rule;

    return-object p1
.end method

.method public getMutableRuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$Rule;",
            ">;"
        }
    .end annotation

    .line 4769
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4770
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureRuleInitialized()V

    .line 4771
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableTag(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 1

    .line 4585
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    return-object p1
.end method

.method public getMutableTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 4571
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4572
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureTagInitialized()V

    .line 4573
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    return-object v0
.end method

.method public getMutableUsageContextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5291
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5292
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5293
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    return-object v0
.end method

.method public getMutableUsageContextListAsBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 5299
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5300
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5301
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMutableValue(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 4288
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getMutableValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 4274
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 4275
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureValueInitialized()V

    .line 4276
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/tagmanager/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/tagmanager/protobuf/Parser<",
            "Lcom/google/analytics/containertag/proto/MutableServing$Resource;",
            ">;"
        }
    .end annotation

    .line 4118
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    return-object v0
.end method

.method public getPredicate(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 1

    .line 4678
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    return-object p1
.end method

.method public getPredicateCount()I
    .locals 1

    .line 4655
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPredicateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 4661
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4662
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4664
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewAuthCode()Ljava/lang/String;
    .locals 2

    .line 4854
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 4855
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4856
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4858
    :cond_0
    check-cast v0, [B

    .line 4859
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 4861
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4862
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPreviewAuthCodeAsBytes()[B
    .locals 2

    .line 4871
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 4872
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4873
    check-cast v0, Ljava/lang/String;

    .line 4874
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 4875
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    return-object v0

    .line 4878
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getProperty(I)Lcom/google/analytics/containertag/proto/MutableServing$Property;
    .locals 1

    .line 4381
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$Property;

    return-object p1
.end method

.method public getPropertyCount()I
    .locals 1

    .line 4358
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$Property;",
            ">;"
        }
    .end annotation

    .line 4364
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4367
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReportingSampleRate()F
    .locals 1

    .line 5197
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->reportingSampleRate_:F

    return v0
.end method

.method public getResourceFormatVersion()I
    .locals 1

    .line 5391
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->resourceFormatVersion_:I

    return v0
.end method

.method public getRule(I)Lcom/google/analytics/containertag/proto/MutableServing$Rule;
    .locals 1

    .line 4777
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$Rule;

    return-object p1
.end method

.method public getRuleCount()I
    .locals 1

    .line 4754
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRuleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$Rule;",
            ">;"
        }
    .end annotation

    .line 4760
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4761
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4763
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 5741
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v2

    move v3, v0

    .line 5743
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 5744
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v4, v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v3, v2

    .line 5748
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v0

    mul-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    .line 5750
    :goto_1
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    move v3, v0

    move v0, v2

    .line 5751
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 5752
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    .line 5756
    :cond_3
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    if-eqz v3, :cond_5

    move v3, v0

    move v0, v2

    .line 5757
    :goto_3
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    const/4 v5, 0x3

    .line 5758
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v3

    .line 5762
    :cond_5
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    const/4 v5, 0x4

    if-eqz v3, :cond_7

    move v3, v0

    move v0, v2

    .line 5763
    :goto_4
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 5764
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v3

    .line 5768
    :cond_7
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    if-eqz v3, :cond_9

    move v3, v0

    move v0, v2

    .line 5769
    :goto_5
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    const/4 v6, 0x5

    .line 5770
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    move v0, v3

    .line 5774
    :cond_9
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    if-eqz v3, :cond_b

    move v3, v0

    move v0, v2

    .line 5775
    :goto_6
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_a

    const/4 v6, 0x6

    .line 5776
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move v0, v3

    .line 5780
    :cond_b
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    if-eqz v3, :cond_d

    move v3, v0

    move v0, v2

    .line 5781
    :goto_7
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_c

    const/4 v6, 0x7

    .line 5782
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/protobuf/MessageLite;

    invoke-static {v6, v7}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    move v0, v3

    .line 5786
    :cond_d
    iget v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/2addr v3, v1

    if-ne v3, v1, :cond_e

    const/16 v1, 0x9

    .line 5787
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPreviewAuthCodeAsBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5790
    :cond_e
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_f

    const/16 v1, 0xa

    .line 5791
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMalwareScanAuthCodeAsBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5794
    :cond_f
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_10

    const/16 v1, 0xc

    .line 5795
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTemplateVersionSetAsBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5798
    :cond_10
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_11

    const/16 v1, 0xd

    .line 5799
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getVersionAsBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 5802
    :cond_11
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_12

    const/16 v1, 0xe

    .line 5803
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/tagmanager/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5806
    :cond_12
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_13

    const/16 v1, 0xf

    .line 5807
    iget v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->reportingSampleRate_:F

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5810
    :cond_13
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_14

    const/16 v1, 0x12

    .line 5811
    iget-boolean v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->enableAutoEventTracking_:Z

    invoke-static {v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5814
    :cond_14
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v1

    if-lez v1, :cond_16

    move v1, v2

    .line 5816
    :goto_8
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 5817
    iget-object v3, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v3, v2}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    add-int/2addr v0, v1

    .line 5821
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v1

    mul-int/2addr v4, v1

    add-int/2addr v0, v4

    .line 5823
    :cond_16
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_17

    const/16 v1, 0x11

    .line 5824
    iget v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->resourceFormatVersion_:I

    invoke-static {v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5827
    :cond_17
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 5828
    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->cachedSize:I

    return v0
.end method

.method public getTag(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;
    .locals 1

    .line 4579
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    return-object p1
.end method

.method public getTagCount()I
    .locals 1

    .line 4556
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;",
            ">;"
        }
    .end annotation

    .line 4562
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4563
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4565
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateVersionSet()Ljava/lang/String;
    .locals 2

    .line 4998
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 4999
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5000
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5002
    :cond_0
    check-cast v0, [B

    .line 5003
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 5005
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5006
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getTemplateVersionSetAsBytes()[B
    .locals 2

    .line 5015
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 5016
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5017
    check-cast v0, Ljava/lang/String;

    .line 5018
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 5019
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    return-object v0

    .line 5022
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public getUsageContext(I)Ljava/lang/String;
    .locals 1

    .line 5307
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getUsageContextAsBytes(I)[B
    .locals 1

    .line 5313
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getUsageContextCount()I
    .locals 1

    .line 5266
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v0

    :goto_0
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

    .line 5272
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 5273
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5275
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsageContextListAsBytes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 5281
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-nez v0, :cond_0

    .line 5282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5284
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;
    .locals 1

    .line 4282
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    return-object p1
.end method

.method public getValueCount()I
    .locals 1

    .line 4259
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 4265
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4268
    :cond_0
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 5070
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    .line 5071
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5072
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5074
    :cond_0
    check-cast v0, [B

    .line 5075
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toStringUtf8([B)Ljava/lang/String;

    move-result-object v1

    .line 5077
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->isValidUtf8([B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5078
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getVersionAsBytes()[B
    .locals 2

    .line 5087
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    .line 5088
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5089
    check-cast v0, Ljava/lang/String;

    .line 5090
    invoke-static {v0}, Lcom/google/tagmanager/protobuf/Internal;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 5091
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    return-object v0

    .line 5094
    :cond_0
    check-cast v0, [B

    return-object v0
.end method

.method public hasEnableAutoEventTracking()Z
    .locals 2

    .line 5226
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

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

.method public hasLiveJsCacheOption()Z
    .locals 2

    .line 5141
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v1, 0x10

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

    .line 4920
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

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

.method public hasPreviewAuthCode()Z
    .locals 2

    .line 4848
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasReportingSampleRate()Z
    .locals 2

    .line 5191
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

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

.method public hasResourceFormatVersion()Z
    .locals 2

    .line 5385
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

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

.method public hasTemplateVersionSet()Z
    .locals 2

    .line 4992
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

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

.method public hasVersion()Z
    .locals 2

    .line 5064
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

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

.method public hashCode()I
    .locals 4

    .line 5945
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x13a46

    .line 5947
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getKeyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 5949
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getValueCount()I

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-lez v1, :cond_1

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v2

    .line 5951
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getValueList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5953
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPropertyCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x3

    mul-int/2addr v0, v2

    .line 5955
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPropertyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5957
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMacroCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x4

    mul-int/2addr v0, v2

    .line 5959
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMacroList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5961
    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTagCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, v2

    .line 5963
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTagList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5965
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPredicateCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x6

    mul-int/2addr v0, v2

    .line 5967
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPredicateList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5969
    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getRuleCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x7

    mul-int/2addr v0, v2

    .line 5971
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getRuleList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5973
    :cond_6
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasPreviewAuthCode()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x9

    mul-int/2addr v0, v2

    .line 5975
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPreviewAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5977
    :cond_7
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasMalwareScanAuthCode()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xa

    mul-int/2addr v0, v2

    .line 5979
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMalwareScanAuthCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5981
    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasTemplateVersionSet()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xc

    mul-int/2addr v0, v2

    .line 5983
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTemplateVersionSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5985
    :cond_9
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xd

    mul-int/2addr v0, v2

    .line 5987
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5989
    :cond_a
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasLiveJsCacheOption()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xe

    mul-int/2addr v0, v2

    .line 5991
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5993
    :cond_b
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasReportingSampleRate()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0xf

    mul-int/2addr v0, v2

    .line 5995
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getReportingSampleRate()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 5998
    :cond_c
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasEnableAutoEventTracking()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x12

    mul-int/2addr v0, v2

    .line 6000
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getEnableAutoEventTracking()Z

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 6003
    :cond_d
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getUsageContextCount()I

    move-result v1

    if-lez v1, :cond_e

    mul-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x10

    mul-int/2addr v0, v2

    .line 6005
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getUsageContextList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6007
    :cond_e
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasResourceFormatVersion()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x11

    mul-int/2addr v2, v3

    .line 6009
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getResourceFormatVersion()I

    move-result v0

    add-int/2addr v0, v2

    :cond_f
    const/16 v1, 0x1d

    mul-int/2addr v1, v0

    .line 6011
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method protected internalImmutableDefault()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 6019
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    if-nez v0, :cond_0

    const-string v0, "com.google.analytics.containertag.proto.Serving$Resource"

    .line 6020
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->internalImmutableDefault(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 6022
    :cond_0
    sget-object v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->immutableDefault:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 5413
    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getValueCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5414
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getValue(I)Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 5418
    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPropertyCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5419
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getProperty(I)Lcom/google/analytics/containertag/proto/MutableServing$Property;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableServing$Property;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 5423
    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMacroCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 5424
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMacro(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    .line 5428
    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTagCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 5429
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTag(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move v1, v0

    .line 5433
    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPredicateCount()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 5434
    invoke-virtual {p0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPredicate(I)Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;->isInitialized()Z

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

.method public mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$Resource;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 2

    if-ne p0, p1, :cond_0

    .line 5447
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(message) called on the same message."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5450
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5451
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 5452
    :cond_1
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5453
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 5454
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->mergeFrom(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    .line 5456
    :cond_2
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5457
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureValueInitialized()V

    .line 5458
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5461
    :cond_3
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5462
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePropertyInitialized()V

    .line 5463
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5466
    :cond_4
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5467
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureMacroInitialized()V

    .line 5468
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5471
    :cond_5
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5472
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureTagInitialized()V

    .line 5473
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5476
    :cond_6
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5477
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePredicateInitialized()V

    .line 5478
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5481
    :cond_7
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 5482
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureRuleInitialized()V

    .line 5483
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/tagmanager/protobuf/AbstractMutableMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 5486
    :cond_8
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasPreviewAuthCode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5487
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5488
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 5489
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    goto :goto_0

    .line 5491
    :cond_9
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    check-cast v0, [B

    .line 5492
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    .line 5495
    :cond_a
    :goto_0
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasMalwareScanAuthCode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5496
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5497
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 5498
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    goto :goto_1

    .line 5500
    :cond_b
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    check-cast v0, [B

    .line 5501
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    .line 5504
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasTemplateVersionSet()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5505
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5506
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 5507
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    goto :goto_2

    .line 5509
    :cond_d
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    check-cast v0, [B

    .line 5510
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    .line 5513
    :cond_e
    :goto_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5514
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5515
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 5516
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    goto :goto_3

    .line 5518
    :cond_f
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    check-cast v0, [B

    .line 5519
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    .line 5522
    :cond_10
    :goto_3
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasLiveJsCacheOption()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5523
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureLiveJsCacheOptionInitialized()V

    .line 5524
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getLiveJsCacheOption()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;)Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 5525
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5527
    :cond_11
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasReportingSampleRate()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5528
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getReportingSampleRate()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->setReportingSampleRate(F)Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 5530
    :cond_12
    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/tagmanager/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 5531
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5532
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    iget-object v1, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->mergeFrom(Lcom/google/tagmanager/protobuf/LazyStringList;)V

    .line 5534
    :cond_13
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasResourceFormatVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5535
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getResourceFormatVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->setResourceFormatVersion(I)Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 5537
    :cond_14
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->hasEnableAutoEventTracking()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5538
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getEnableAutoEventTracking()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->setEnableAutoEventTracking(Z)Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    .line 5540
    :cond_15
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    iget-object p1, p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;
    .locals 0

    .line 4092
    check-cast p1, Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->mergeFrom(Lcom/google/analytics/containertag/proto/MutableServing$Resource;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Z
    .locals 6

    .line 5547
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    const/4 v0, 0x0

    .line 5549
    :try_start_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/ByteString;->newOutput()Lcom/google/tagmanager/protobuf/ByteString$Output;

    move-result-object v1

    .line 5551
    invoke-static {v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/tagmanager/protobuf/CodedOutputStream;

    move-result-object v2

    move v3, v0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 5556
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 5562
    invoke-virtual {p0, p1, v2, p2, v5}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->parseUnknownField(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/CodedOutputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    goto/16 :goto_2

    .line 5641
    :sswitch_0
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5642
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->enableAutoEventTracking_:Z

    goto :goto_0

    .line 5636
    :sswitch_1
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5637
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->resourceFormatVersion_:I

    goto :goto_0

    .line 5631
    :sswitch_2
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5632
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/tagmanager/protobuf/LazyStringList;->add([B)V

    goto :goto_0

    .line 5626
    :sswitch_3
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5627
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->reportingSampleRate_:F

    goto :goto_0

    .line 5618
    :sswitch_4
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->getDefaultInstance()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 5619
    invoke-static {}, Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;->newMessage()Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    .line 5621
    :cond_1
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5622
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto :goto_0

    .line 5613
    :sswitch_5
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5614
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    goto :goto_0

    .line 5608
    :sswitch_6
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5609
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    goto :goto_0

    .line 5603
    :sswitch_7
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5604
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5598
    :sswitch_8
    iget v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5599
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5594
    :sswitch_9
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->addRule()Lcom/google/analytics/containertag/proto/MutableServing$Rule;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 5590
    :sswitch_a
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->addPredicate()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 5586
    :sswitch_b
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->addTag()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 5582
    :sswitch_c
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->addMacro()Lcom/google/analytics/containertag/proto/MutableServing$FunctionCall;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 5578
    :sswitch_d
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->addProperty()Lcom/google/analytics/containertag/proto/MutableServing$Property;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 5574
    :sswitch_e
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->addValue()Lcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readMessage(Lcom/google/tagmanager/protobuf/MutableMessageLite;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_0

    .line 5569
    :sswitch_f
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 5570
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedInputStream;->readByteArray()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/tagmanager/protobuf/LazyStringList;->add([B)V

    goto/16 :goto_0

    :goto_1
    :sswitch_10
    move v3, v4

    goto/16 :goto_0

    :goto_2
    if-nez v5, :cond_0

    goto :goto_1

    .line 5647
    :cond_2
    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->flush()V

    .line 5648
    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString$Output;->toByteString()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_10
        0xa -> :sswitch_f
        0x12 -> :sswitch_e
        0x1a -> :sswitch_d
        0x22 -> :sswitch_c
        0x2a -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x62 -> :sswitch_6
        0x6a -> :sswitch_5
        0x72 -> :sswitch_4
        0x7d -> :sswitch_3
        0x82 -> :sswitch_2
        0x88 -> :sswitch_1
        0x90 -> :sswitch_0
    .end sparse-switch
.end method

.method public newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4100
    new-instance v0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newMessageForType()Lcom/google/tagmanager/protobuf/MutableMessageLite;
    .locals 1

    .line 4092
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->newMessageForType()Lcom/google/analytics/containertag/proto/MutableServing$Resource;

    move-result-object v0

    return-object v0
.end method

.method public setEnableAutoEventTracking(Z)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5238
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5239
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5240
    iput-boolean p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->enableAutoEventTracking_:Z

    return-object p0
.end method

.method public setKey(ILjava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4220
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4221
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4222
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 4223
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setKeyAsBytes(I[B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4231
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4232
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4233
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureKeyInitialized()V

    .line 4234
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringList;->set(I[B)V

    return-object p0
.end method

.method public setLiveJsCacheOption(Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5163
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 5165
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5167
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5168
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    return-object p0
.end method

.method public setMacro(ILcom/google/analytics/containertag/proto/MutableServing$FunctionCall;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4526
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4528
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4530
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureMacroInitialized()V

    .line 4531
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMalwareScanAuthCode(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4957
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4958
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4959
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 4960
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setMalwareScanAuthCodeAsBytes([B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4968
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4969
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4970
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 4971
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->malwareScanAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPredicate(ILcom/google/analytics/containertag/proto/MutableServing$FunctionCall;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4724
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4726
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4728
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePredicateInitialized()V

    .line 4729
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPreviewAuthCode(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4885
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4886
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4887
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 4888
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setPreviewAuthCodeAsBytes([B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4896
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 4897
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4898
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 4899
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->previewAuthCode_:Ljava/lang/Object;

    return-object p0
.end method

.method public setProperty(ILcom/google/analytics/containertag/proto/MutableServing$Property;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4427
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4429
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4431
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensurePropertyInitialized()V

    .line 4432
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setReportingSampleRate(F)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5203
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5204
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5205
    iput p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->reportingSampleRate_:F

    return-object p0
.end method

.method public setResourceFormatVersion(I)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5397
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    .line 5398
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5399
    iput p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->resourceFormatVersion_:I

    return-object p0
.end method

.method public setRule(ILcom/google/analytics/containertag/proto/MutableServing$Rule;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4823
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4825
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4827
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureRuleInitialized()V

    .line 4828
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTag(ILcom/google/analytics/containertag/proto/MutableServing$FunctionCall;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4625
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4627
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4629
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureTagInitialized()V

    .line 4630
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateVersionSet(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5029
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 5030
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5031
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5032
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    return-object p0
.end method

.method public setTemplateVersionSetAsBytes([B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5040
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 5041
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5042
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5043
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->templateVersionSet_:Ljava/lang/Object;

    return-object p0
.end method

.method public setUsageContext(ILjava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5351
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 5352
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5353
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5354
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setUsageContextAsBytes(I[B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5362
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 5363
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5364
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureUsageContextInitialized()V

    .line 5365
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/protobuf/LazyStringList;->set(I[B)V

    return-object p0
.end method

.method public setValue(ILcom/google/analytics/midtier/proto/containertag/MutableTypeSystem$Value;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 4328
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p2, :cond_0

    .line 4330
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 4332
    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->ensureValueInitialized()V

    .line 4333
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5101
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 5102
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5103
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5104
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method public setVersionAsBytes([B)Lcom/google/analytics/containertag/proto/MutableServing$Resource;
    .locals 1

    .line 5112
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->assertMutable()V

    if-nez p1, :cond_0

    .line 5113
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 5114
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    .line 5115
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 5836
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMutableMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToWithCachedSizes(Lcom/google/tagmanager/protobuf/CodedOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5658
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result v0

    .line 5659
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    .line 5660
    :goto_0
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 5661
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->key_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5664
    :cond_0
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    move v1, v2

    .line 5665
    :goto_1
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 5666
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->value_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v4, v5}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5670
    :cond_1
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    if-eqz v1, :cond_2

    move v1, v2

    .line 5671
    :goto_2
    iget-object v5, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    const/4 v5, 0x3

    .line 5672
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->property_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5676
    :cond_2
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    const/4 v5, 0x4

    if-eqz v1, :cond_3

    move v1, v2

    .line 5677
    :goto_3
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 5678
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->macro_:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v5, v6}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5682
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    if-eqz v1, :cond_4

    move v1, v2

    .line 5683
    :goto_4
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    const/4 v6, 0x5

    .line 5684
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->tag_:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v6, v7}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 5688
    :cond_4
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    if-eqz v1, :cond_5

    move v1, v2

    .line 5689
    :goto_5
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    const/4 v6, 0x6

    .line 5690
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->predicate_:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v6, v7}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5694
    :cond_5
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    if-eqz v1, :cond_6

    move v1, v2

    .line 5695
    :goto_6
    iget-object v6, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    const/4 v6, 0x7

    .line 5696
    iget-object v7, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->rule_:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/tagmanager/protobuf/MutableMessageLite;

    invoke-virtual {p1, v6, v7}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 5700
    :cond_6
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_7

    const/16 v1, 0x9

    .line 5701
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getPreviewAuthCodeAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5703
    :cond_7
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_8

    const/16 v1, 0xa

    .line 5704
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getMalwareScanAuthCodeAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5706
    :cond_8
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_9

    const/16 v1, 0xc

    .line 5707
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getTemplateVersionSetAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5709
    :cond_9
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_a

    const/16 v1, 0xd

    .line 5710
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getVersionAsBytes()[B

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    .line 5712
    :cond_a
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_b

    const/16 v1, 0xe

    .line 5713
    iget-object v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->liveJsCacheOption_:Lcom/google/analytics/containertag/proto/MutableServing$CacheOption;

    invoke-virtual {p1, v1, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeMessageWithCachedSizes(ILcom/google/tagmanager/protobuf/MutableMessageLite;)V

    .line 5715
    :cond_b
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v4, 0x20

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_c

    const/16 v1, 0xf

    .line 5716
    iget v4, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->reportingSampleRate_:F

    invoke-virtual {p1, v1, v4}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5718
    :cond_c
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    if-eqz v1, :cond_d

    .line 5719
    :goto_7
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/tagmanager/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    .line 5720
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->usageContext_:Lcom/google/tagmanager/protobuf/LazyStringList;

    invoke-interface {v1, v2}, Lcom/google/tagmanager/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeByteArray(I[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5723
    :cond_d
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_e

    const/16 v1, 0x11

    .line 5724
    iget v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->resourceFormatVersion_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5726
    :cond_e
    iget v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    const/16 v1, 0x12

    .line 5727
    iget-boolean v2, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->enableAutoEventTracking_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 5729
    :cond_f
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->unknownFields:Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 5730
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/CodedOutputStream;->getTotalBytesWritten()I

    move-result p1

    .line 5731
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/MutableServing$Resource;->getCachedSize()I

    move-result v1

    sub-int/2addr p1, v0

    if-eq v1, p1, :cond_10

    .line 5732
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Serialized size doesn\'t match cached size. You may forget to call getSerializedSize() or the message is being modified concurrently."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    return-void
.end method
