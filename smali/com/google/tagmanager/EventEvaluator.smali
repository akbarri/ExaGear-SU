.class Lcom/google/tagmanager/EventEvaluator;
.super Ljava/lang/Object;
.source "EventEvaluator.java"


# instance fields
.field private final mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

.field private final mRuntime:Lcom/google/tagmanager/Runtime;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/Runtime;Lcom/google/tagmanager/ResourceUtil$ExpandedResource;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "runtime cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/google/tagmanager/EventEvaluator;->mRuntime:Lcom/google/tagmanager/Runtime;

    .line 18
    invoke-virtual {p1}, Lcom/google/tagmanager/Runtime;->getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "resource must be the same as the resource in runtime"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/google/tagmanager/Runtime;->getResource()Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/EventEvaluator;->mResource:Lcom/google/tagmanager/ResourceUtil$ExpandedResource;

    return-void
.end method


# virtual methods
.method evaluateEvent(Ljava/lang/String;)V
    .locals 1

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "this code not yet written"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
