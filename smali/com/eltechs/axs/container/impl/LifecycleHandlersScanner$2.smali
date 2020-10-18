.class final Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner$2;
.super Ljava/lang/Object;
.source "LifecycleHandlersScanner.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner;->listPreRemoveActions(Ljava/lang/Class;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner$2;->val$actions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/reflect/Method;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    array-length v0, v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 69
    :goto_0
    invoke-static {p1}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->isStatic(Ljava/lang/reflect/Method;)Z

    move-result v3

    const-string v4, "The method %s is marked with @PreRemove annotation and must be a member method."

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    const-string v3, "The method %s is marked with @PreRemove annotation and must have no parameters."

    .line 71
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isFalse(ZLjava/lang/String;)V

    .line 74
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner$2;->val$actions:Ljava/util/ArrayList;

    new-instance v1, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;

    invoke-direct {v1, p1}, Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
