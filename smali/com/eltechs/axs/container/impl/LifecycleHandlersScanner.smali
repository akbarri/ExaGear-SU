.class public abstract Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner;
.super Ljava/lang/Object;
.source "LifecycleHandlersScanner.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listPostAddActions(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    const-class v1, Lcom/eltechs/axs/container/annotations/PostAdd;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;->instanceMethodsBearingAnnotation(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner$1;

    invoke-direct {v2, v0}, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner$1;-><init>(Ljava/util/ArrayList;)V

    .line 47
    :try_start_0
    invoke-static {p0, v2, v1}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->doWithMethods(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    .line 53
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0
.end method

.method public static listPreRemoveActions(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/LifecycleHandlerMethod;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    const-class v1, Lcom/eltechs/axs/container/annotations/PreRemove;

    invoke-static {v1}, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;->instanceMethodsBearingAnnotation(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner$2;

    invoke-direct {v2, v0}, Lcom/eltechs/axs/container/impl/LifecycleHandlersScanner$2;-><init>(Ljava/util/ArrayList;)V

    .line 81
    :try_start_0
    invoke-static {p0, v2, v1}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->doWithMethods(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    .line 87
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0
.end method
