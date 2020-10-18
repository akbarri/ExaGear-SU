.class Lcom/google/tagmanager/EventMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "EventMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final mRuntime:Lcom/google/tagmanager/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->EVENT:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/EventMacro;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/tagmanager/Runtime;)V
    .locals 2

    .line 23
    sget-object v0, Lcom/google/tagmanager/EventMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/google/tagmanager/EventMacro;->mRuntime:Lcom/google/tagmanager/Runtime;

    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/tagmanager/EventMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    .line 32
    iget-object p1, p0, Lcom/google/tagmanager/EventMacro;->mRuntime:Lcom/google/tagmanager/Runtime;

    invoke-virtual {p1}, Lcom/google/tagmanager/Runtime;->getCurrentEventName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 33
    invoke-static {}, Lcom/google/tagmanager/Types;->getDefaultValue()Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
