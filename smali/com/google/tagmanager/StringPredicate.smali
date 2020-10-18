.class abstract Lcom/google/tagmanager/StringPredicate;
.super Lcom/google/tagmanager/Predicate;
.source "StringPredicate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/tagmanager/Predicate;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected evaluateNoDefaultValues(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)Z"
        }
    .end annotation

    .line 28
    invoke-static {p1}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p2}, Lcom/google/tagmanager/Types;->valueToString(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultString()Ljava/lang/String;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/tagmanager/StringPredicate;->evaluateString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected abstract evaluateString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
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
.end method
