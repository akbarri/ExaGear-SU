.class Lcom/google/tagmanager/StartsWithPredicate;
.super Lcom/google/tagmanager/StringPredicate;
.source "StartsWithPredicate.java"


# static fields
.field private static final ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->STARTS_WITH:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/StartsWithPredicate;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    sget-object v0, Lcom/google/tagmanager/StartsWithPredicate;->ID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/StringPredicate;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/tagmanager/StartsWithPredicate;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected evaluateString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
