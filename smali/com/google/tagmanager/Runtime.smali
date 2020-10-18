.class Lcom/google/tagmanager/Runtime;
.super Ljava/lang/Object;
.source "Runtime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;,
        Lcom/google/tagmanager/Runtime$MacroInfo;
    }
.end annotation


# static fields
.field static final DEFAULT_RULE_NAME:Ljava/lang/String; = "Unknown"

.field private static final DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_CACHE_SIZE:I = 0x100000


# instance fields
.field private final eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

.field private volatile mCurrentEventName:Ljava/lang/String;

.field private final mFunctionCallCache:Lcom/google/tagmanager/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/Cache<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMacroEvaluationCache:Lcom/google/tagmanager/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/tagmanager/Cache<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMacroLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacroMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredicateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field

.field private final mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

.field private final mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackingTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V
    .locals 7

    .line 314
    new-instance v6, Lcom/google/tagmanager/NoopEventInfoDistributor;

    invoke-direct {v6}, Lcom/google/tagmanager/NoopEventInfoDistributor;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/tagmanager/Runtime;-><init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;Lcom/google/tagmanager/DataLayer;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;Lcom/google/tagmanager/EventInfoDistributor;)V
    .locals 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 179
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "resource cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 182
    :cond_0
    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getRules()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    .line 185
    iput-object p6, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    .line 188
    new-instance p2, Lcom/google/tagmanager/Runtime$1;

    invoke-direct {p2, p0}, Lcom/google/tagmanager/Runtime$1;-><init>(Lcom/google/tagmanager/Runtime;)V

    .line 197
    new-instance v0, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v0}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1, p2}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object p2

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    .line 200
    new-instance p2, Lcom/google/tagmanager/Runtime$2;

    invoke-direct {p2, p0}, Lcom/google/tagmanager/Runtime$2;-><init>(Lcom/google/tagmanager/Runtime;)V

    .line 207
    new-instance v0, Lcom/google/tagmanager/CacheFactory;

    invoke-direct {v0}, Lcom/google/tagmanager/CacheFactory;-><init>()V

    invoke-virtual {v0, v1, p2}, Lcom/google/tagmanager/CacheFactory;->createCache(ILcom/google/tagmanager/CacheFactory$CacheSizeManager;)Lcom/google/tagmanager/Cache;

    move-result-object p2

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    .line 213
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    .line 214
    new-instance p2, Lcom/google/tagmanager/ArbitraryPixelTag;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/ArbitraryPixelTag;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 215
    new-instance p2, Lcom/google/tagmanager/CustomFunctionCall;

    invoke-direct {p2, p5}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 216
    new-instance p2, Lcom/google/tagmanager/UniversalAnalyticsTag;

    invoke-direct {p2, p1, p3}, Lcom/google/tagmanager/UniversalAnalyticsTag;-><init>(Landroid/content/Context;Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 218
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    .line 219
    new-instance p2, Lcom/google/tagmanager/ContainsPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/ContainsPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 220
    new-instance p2, Lcom/google/tagmanager/EndsWithPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/EndsWithPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 221
    new-instance p2, Lcom/google/tagmanager/EqualsPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/EqualsPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 222
    new-instance p2, Lcom/google/tagmanager/GreaterEqualsPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/GreaterEqualsPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 223
    new-instance p2, Lcom/google/tagmanager/GreaterThanPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/GreaterThanPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 224
    new-instance p2, Lcom/google/tagmanager/LessEqualsPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/LessEqualsPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 225
    new-instance p2, Lcom/google/tagmanager/LessThanPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/LessThanPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 226
    new-instance p2, Lcom/google/tagmanager/RegexPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/RegexPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 227
    new-instance p2, Lcom/google/tagmanager/StartsWithPredicate;

    invoke-direct {p2}, Lcom/google/tagmanager/StartsWithPredicate;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 229
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    .line 230
    new-instance p2, Lcom/google/tagmanager/AdvertiserIdMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/AdvertiserIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 231
    new-instance p2, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/AdvertisingTrackingEnabledMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 232
    new-instance p2, Lcom/google/tagmanager/AdwordsClickReferrerMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/AdwordsClickReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 233
    new-instance p2, Lcom/google/tagmanager/AppIdMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/AppIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 234
    new-instance p2, Lcom/google/tagmanager/AppNameMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/AppNameMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 235
    new-instance p2, Lcom/google/tagmanager/AppVersionMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/AppVersionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 236
    new-instance p2, Lcom/google/tagmanager/ConstantMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/ConstantMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 237
    new-instance p2, Lcom/google/tagmanager/CustomFunctionCall;

    invoke-direct {p2, p4}, Lcom/google/tagmanager/CustomFunctionCall;-><init>(Lcom/google/tagmanager/CustomFunctionCall$CustomEvaluator;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 238
    new-instance p2, Lcom/google/tagmanager/DataLayerMacro;

    invoke-direct {p2, p3}, Lcom/google/tagmanager/DataLayerMacro;-><init>(Lcom/google/tagmanager/DataLayer;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 239
    new-instance p2, Lcom/google/tagmanager/DeviceIdMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/DeviceIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 240
    new-instance p2, Lcom/google/tagmanager/DeviceNameMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/DeviceNameMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 241
    new-instance p2, Lcom/google/tagmanager/EncodeMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/EncodeMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 242
    new-instance p2, Lcom/google/tagmanager/EventMacro;

    invoke-direct {p2, p0}, Lcom/google/tagmanager/EventMacro;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 243
    new-instance p2, Lcom/google/tagmanager/GtmVersionMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/GtmVersionMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 244
    new-instance p2, Lcom/google/tagmanager/HashMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/HashMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 245
    new-instance p2, Lcom/google/tagmanager/InstallReferrerMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/InstallReferrerMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 246
    new-instance p2, Lcom/google/tagmanager/JoinerMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/JoinerMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 247
    new-instance p2, Lcom/google/tagmanager/LanguageMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/LanguageMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 248
    new-instance p2, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/MobileAdwordsUniqueIdMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 249
    new-instance p2, Lcom/google/tagmanager/OsVersionMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/OsVersionMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 250
    new-instance p2, Lcom/google/tagmanager/PlatformMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/PlatformMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 251
    new-instance p2, Lcom/google/tagmanager/RandomMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/RandomMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 252
    new-instance p2, Lcom/google/tagmanager/RegexGroupMacro;

    invoke-direct {p2}, Lcom/google/tagmanager/RegexGroupMacro;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 253
    new-instance p2, Lcom/google/tagmanager/ResolutionMacro;

    invoke-direct {p2, p1}, Lcom/google/tagmanager/ResolutionMacro;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 254
    new-instance p1, Lcom/google/tagmanager/RuntimeVersionMacro;

    invoke-direct {p1}, Lcom/google/tagmanager/RuntimeVersionMacro;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 255
    new-instance p1, Lcom/google/tagmanager/SdkVersionMacro;

    invoke-direct {p1}, Lcom/google/tagmanager/SdkVersionMacro;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 256
    new-instance p1, Lcom/google/tagmanager/TimeMacro;

    invoke-direct {p1}, Lcom/google/tagmanager/TimeMacro;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V

    .line 259
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    .line 262
    iget-object p1, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 266
    invoke-interface {p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 267
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object p4

    const-string p5, "add macro"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object p4

    const-string p5, "remove macro"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTags()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddTagRuleNames()Ljava/util/List;

    move-result-object p4

    const-string p5, "add tag"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTags()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveTagRuleNames()Ljava/util/List;

    move-result-object p4

    const-string p5, "remove tag"

    invoke-static {p3, p4, p5}, Lcom/google/tagmanager/Runtime;->verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    const/4 p3, 0x0

    move p4, p3

    .line 276
    :goto_0
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_4

    .line 277
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacros()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    const-string v0, "Unknown"

    .line 279
    invoke-interface {p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p4, v1, :cond_3

    .line 280
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getAddMacroRuleNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {p5}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v1

    .line 283
    invoke-virtual {v1, p2}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    .line 284
    invoke-virtual {v1, p2, p5}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    .line 285
    invoke-virtual {v1, p2, v0}, Lcom/google/tagmanager/Runtime$MacroInfo;->addAddMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 287
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 288
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacros()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    const-string p5, "Unknown"

    .line 290
    invoke-interface {p6}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 291
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getRemoveMacroRuleNames()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 293
    :cond_5
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-static {p4}, Lcom/google/tagmanager/Runtime;->getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p2}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;)V

    .line 295
    invoke-virtual {v0, p2, p4}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    .line 296
    invoke-virtual {v0, p2, p5}, Lcom/google/tagmanager/Runtime$MacroInfo;->addRemoveMacroRuleNameForRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 301
    :cond_6
    iget-object p1, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedResource;->getAllMacros()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 303
    invoke-virtual {p4}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object p5

    sget-object p6, Lcom/google/analytics/containertag/common/Key;->NOT_DEFAULT_MACRO:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {p6}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {p5}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_8

    .line 305
    iget-object p5, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-static {p5, p6}, Lcom/google/tagmanager/Runtime;->getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/google/tagmanager/Runtime$MacroInfo;->setDefault(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)V

    goto :goto_2

    :cond_9
    return-void
.end method

.method private static addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ")V"
        }
    .end annotation

    .line 512
    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate function type name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getInstanceFunctionId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 480
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 483
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;

    .line 484
    invoke-interface {p4}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->createResolvedRuleBuilder()Lcom/google/tagmanager/ResolvedRuleBuilder;

    move-result-object v5

    .line 485
    invoke-virtual {p0, v4, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicatesInRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v6

    .line 487
    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 488
    invoke-interface {p3, v4, v0, v1, v5}, Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;->rulePassed(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 490
    invoke-virtual {v6}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 495
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 496
    invoke-interface {p4, v0}, Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;->setEnabledFunctions(Ljava/util/Set;)V

    .line 497
    new-instance p1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-direct {p1, v0, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method private evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/MacroEvaluationInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/ObjectAndStatic;

    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v1}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroLookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$MacroInfo;

    if-nez v0, :cond_1

    .line 604
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid macro: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 605
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 608
    :cond_1
    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRules()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacros()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;->getAddMacroRuleNames()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacros()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;->getRemoveMacroRuleNames()Ljava/util/Map;

    move-result-object v7

    invoke-interface {p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/google/tagmanager/Runtime;->calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    .line 614
    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 615
    invoke-virtual {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;->getDefault()Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_2
    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple macros active for macroName "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    .line 620
    :cond_3
    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    :goto_0
    if-nez v0, :cond_4

    .line 625
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 628
    :cond_4
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-interface {p3}, Lcom/google/tagmanager/MacroEvaluationInfoBuilder;->createResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object p3

    invoke-direct {p0, v2, v0, p2, p3}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object p2

    .line 630
    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    .line 633
    :goto_1
    sget-object p3, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne p2, p3, :cond_6

    sget-object p2, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    goto :goto_2

    :cond_6
    new-instance p3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {p2}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p3, p2, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    move-object p2, p3

    .line 636
    :goto_2
    invoke-virtual {p2}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 637
    iget-object p3, p0, Lcom/google/tagmanager/Runtime;->mMacroEvaluationCache:Lcom/google/tagmanager/Cache;

    invoke-interface {p3, p1, p2}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    return-object p2
.end method

.method private executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/FunctionCallImplementation;",
            ">;",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 757
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/analytics/containertag/common/Key;->FUNCTION:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v1}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    if-nez v0, :cond_0

    const-string p1, "No function id in properties"

    .line 760
    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 761
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 763
    :cond_0
    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getFunctionId()Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/FunctionCallImplementation;

    if-nez p1, :cond_1

    .line 767
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has no backing implementation."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 768
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    invoke-interface {v1, p2}, Lcom/google/tagmanager/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/ObjectAndStatic;

    if-eqz v1, :cond_2

    .line 774
    iget-object v2, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v2}, Lcom/google/tagmanager/EventInfoDistributor;->debugMode()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 779
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 782
    invoke-virtual {p2}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 783
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p4, v7}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->createResolvedPropertyBuilder(Ljava/lang/String;)Lcom/google/tagmanager/ResolvedPropertyBuilder;

    move-result-object v7

    .line 785
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {v7, v9}, Lcom/google/tagmanager/ResolvedPropertyBuilder;->createPropertyValueBuilder(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v7

    invoke-direct {p0, v8, p3, v7}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v7

    .line 788
    sget-object v8, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v7, v8, :cond_3

    .line 791
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 794
    :cond_3
    invoke-virtual {v7}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 797
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {p2, v6, v8}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->updateCacheableProperty(Ljava/lang/String;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    goto :goto_1

    :cond_4
    move v4, v6

    .line 801
    :goto_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 804
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/tagmanager/FunctionCallImplementation;->hasRequiredKeys(Ljava/util/Set;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 806
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect keys for function "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " required "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->getRequiredKeys()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " had "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 809
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    :cond_6
    if-eqz v4, :cond_7

    .line 812
    invoke-virtual {p1}, Lcom/google/tagmanager/FunctionCallImplementation;->isCacheable()Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_2

    :cond_7
    move v3, v6

    .line 814
    :goto_2
    new-instance p3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {p1, v1}, Lcom/google/tagmanager/FunctionCallImplementation;->evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-direct {p3, p1, v3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    if-eqz v3, :cond_8

    .line 819
    iget-object p1, p0, Lcom/google/tagmanager/Runtime;->mFunctionCallCache:Lcom/google/tagmanager/Cache;

    invoke-interface {p1, p2, p3}, Lcom/google/tagmanager/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 821
    :cond_8
    invoke-virtual {p3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-interface {p4, p1}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    return-object p3
.end method

.method private static getFunctionName(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Ljava/lang/String;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/google/analytics/containertag/common/Key;->INSTANCE_NAME:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {p0}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getOrAddMacroInfo(Ljava/util/Map;Ljava/lang/String;)Lcom/google/tagmanager/Runtime$MacroInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/tagmanager/Runtime$MacroInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/Runtime$MacroInfo;"
        }
    .end annotation

    .line 450
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/Runtime$MacroInfo;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Lcom/google/tagmanager/Runtime$MacroInfo;

    invoke-direct {v0}, Lcom/google/tagmanager/Runtime$MacroInfo;-><init>()V

    .line 453
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ValueBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 655
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getContainsReferences()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    new-instance p2, Lcom/google/tagmanager/ObjectAndStatic;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p2

    .line 663
    :cond_0
    sget-object v0, Lcom/google/tagmanager/Runtime$5;->$SwitchMap$com$google$analytics$midtier$proto$containertag$TypeSystem$Value$Type:[I

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 738
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getType()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Type;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 739
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 723
    :pswitch_0
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBuilderBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    move v2, v1

    .line 724
    :goto_0
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getTemplateTokenCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 725
    invoke-virtual {p1, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getTemplateToken(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-interface {p3, v2}, Lcom/google/tagmanager/ValueBuilder;->getTemplateToken(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 727
    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v3, v4, :cond_1

    .line 729
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 731
    :cond_1
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addTemplateToken(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 733
    :cond_2
    new-instance p1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    .line 706
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Macro cycle detected.  Current macro reference: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  Previous macro references: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 711
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 713
    :cond_3
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/google/tagmanager/ValueBuilder;->createValueMacroEvaluationInfoExtension()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object p3

    invoke-direct {p0, v0, p2, p3}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object p3

    .line 717
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getEscapingList()Ljava/util/List;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/tagmanager/ValueEscapeUtil;->applyEscapings(Lcom/google/tagmanager/ObjectAndStatic;Ljava/util/List;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object p3

    .line 718
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMacroReference()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object p3

    .line 680
    :pswitch_2
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBuilderBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    .line 681
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKeyCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapValueCount()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 683
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid serving value: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    .line 684
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    :cond_4
    move v2, v1

    .line 686
    :goto_1
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKeyCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 687
    invoke-virtual {p1, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapKey(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-interface {p3, v2}, Lcom/google/tagmanager/ValueBuilder;->getMapKey(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 690
    invoke-virtual {p1, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getMapValue(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v4

    invoke-interface {p3, v2}, Lcom/google/tagmanager/ValueBuilder;->getMapValue(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v5

    invoke-direct {p0, v4, p2, v5}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v4

    .line 693
    sget-object v5, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-eq v3, v5, :cond_6

    sget-object v5, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 698
    :cond_5
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addMapKey(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    .line 699
    invoke-virtual {v4}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addMapValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 696
    :cond_6
    :goto_2
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 702
    :cond_7
    new-instance p1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    .line 665
    :pswitch_3
    invoke-static {p1}, Lcom/google/tagmanager/ResourceUtil;->newValueBuilderBasedOnValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    move-result-object v0

    move v2, v1

    .line 666
    :goto_3
    invoke-virtual {p1}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getListItemCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 667
    invoke-virtual {p1, v2}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;->getListItem(I)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v3

    invoke-interface {p3, v2}, Lcom/google/tagmanager/ValueBuilder;->getListItem(I)Lcom/google/tagmanager/ValueBuilder;

    move-result-object v4

    invoke-direct {p0, v3, p2, v4}, Lcom/google/tagmanager/Runtime;->macroExpandValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Set;Lcom/google/tagmanager/ValueBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 669
    sget-object v4, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    if-ne v3, v4, :cond_8

    .line 671
    sget-object p1, Lcom/google/tagmanager/Runtime;->DEFAULT_VALUE_AND_STATIC:Lcom/google/tagmanager/ObjectAndStatic;

    return-object p1

    .line 673
    :cond_8
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-virtual {v0, v3}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->addListItem(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 676
    :cond_9
    new-instance p1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {v0}, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value$Builder;->build()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static verifyFunctionAndNameListSizes(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 840
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p0, p1, :cond_0

    .line 841
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid resource: imbalance of rule names of functions for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " operation. Using default rule name instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addMacro(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mMacroMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    return-void
.end method

.method addPredicate(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    return-void
.end method

.method addTrackingTag(Lcom/google/tagmanager/FunctionCallImplementation;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/tagmanager/Runtime;->addFunctionImplToMap(Ljava/util/Map;Lcom/google/tagmanager/FunctionCallImplementation;)V

    return-void
.end method

.method calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;",
            "Ljava/util/Map<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 387
    new-instance p1, Lcom/google/tagmanager/Runtime$3;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/tagmanager/Runtime$3;-><init>(Lcom/google/tagmanager/Runtime;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p2, p7, p1, p8}, Lcom/google/tagmanager/Runtime;->calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object p1

    return-object p1
.end method

.method calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            ">;",
            "Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/util/Set<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;>;"
        }
    .end annotation

    .line 428
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/google/tagmanager/Runtime$4;

    invoke-direct {v1, p0}, Lcom/google/tagmanager/Runtime$4;-><init>(Lcom/google/tagmanager/Runtime;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/tagmanager/Runtime;->calculateGenericToRun(Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object p1

    return-object p1
.end method

.method public evaluateMacroReference(Ljava/lang/String;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createMacroEvalutionEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->createMacroEvaluationInfoBuilder()Lcom/google/tagmanager/MacroEvaluationInfoBuilder;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/google/tagmanager/Runtime;->evaluateMacroReferenceCycleDetection(Ljava/lang/String;Ljava/util/Set;Lcom/google/tagmanager/MacroEvaluationInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object p1

    .line 352
    invoke-interface {v0}, Lcom/google/tagmanager/EventInfoBuilder;->processEventInfo()V

    return-object p1
.end method

.method evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedFunctionCallBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mPredicateMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object p1

    .line 542
    invoke-virtual {p1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {p2}, Lcom/google/tagmanager/Types;->valueToBoolean(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/Boolean;

    move-result-object p2

    .line 543
    invoke-static {p2}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/tagmanager/ResolvedFunctionCallBuilder;->setFunctionResult(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 544
    new-instance p3, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-virtual {p1}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p3
.end method

.method evaluatePredicatesInRule(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
    .locals 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/tagmanager/ResolvedRuleBuilder;",
            ")",
            "Lcom/google/tagmanager/ObjectAndStatic<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 558
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getNegativePredicates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 559
    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v5

    invoke-virtual {p0, v3, p2, v5}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v3

    .line 563
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 565
    new-instance p1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :cond_0
    if-eqz v2, :cond_1

    .line 567
    invoke-virtual {v3}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    .line 571
    :cond_2
    invoke-virtual {p1}, Lcom/google/tagmanager/ResourceUtil$ExpandedRule;->getPositivePredicates()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 572
    invoke-interface {p3}, Lcom/google/tagmanager/ResolvedRuleBuilder;->createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v3

    invoke-virtual {p0, v0, p2, v3}, Lcom/google/tagmanager/Runtime;->evaluatePredicate(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 577
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 578
    new-instance p1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result p3

    invoke-direct {p1, p2, p3}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p1

    :cond_3
    if-eqz v2, :cond_4

    .line 580
    invoke-virtual {v0}, Lcom/google/tagmanager/ObjectAndStatic;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_2

    .line 582
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/tagmanager/ResolvedRuleBuilder;->setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V

    .line 583
    new-instance p1, Lcom/google/tagmanager/ObjectAndStatic;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2, v2}, Lcom/google/tagmanager/ObjectAndStatic;-><init>(Ljava/lang/Object;Z)V

    return-object p1
.end method

.method public declared-synchronized evaluateTags(Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 329
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->eventInfoDistributor:Lcom/google/tagmanager/EventInfoDistributor;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/EventInfoDistributor;->createDataLayerEventEvaluationEventInfo(Ljava/lang/String;)Lcom/google/tagmanager/EventInfoBuilder;

    move-result-object p1

    .line 332
    invoke-interface {p1}, Lcom/google/tagmanager/EventInfoBuilder;->createDataLayerEventEvaluationInfoBuilder()Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/google/tagmanager/Runtime;->mRules:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createRulesEvaluation()Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/tagmanager/Runtime;->calculateTagsToRun(Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/ObjectAndStatic;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;

    .line 336
    iget-object v3, p0, Lcom/google/tagmanager/Runtime;->mTrackingTagMap:Ljava/util/Map;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Lcom/google/tagmanager/DataLayerEventEvaluationInfoBuilder;->createAndAddResult()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;

    move-result-object v5

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/google/tagmanager/Runtime;->executeFunction(Ljava/util/Map;Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;Ljava/util/Set;Lcom/google/tagmanager/ResolvedFunctionCallBuilder;)Lcom/google/tagmanager/ObjectAndStatic;

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {p1}, Lcom/google/tagmanager/EventInfoBuilder;->processEventInfo()V

    const/4 p1, 0x0

    .line 341
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Runtime;->setCurrentEventName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 328
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getCurrentEventName()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mCurrentEventName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/tagmanager/Runtime;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    return-object v0
.end method

.method declared-synchronized setCurrentEventName(Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 358
    :try_start_0
    iput-object p1, p0, Lcom/google/tagmanager/Runtime;->mCurrentEventName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 357
    monitor-exit p0

    throw p1
.end method
