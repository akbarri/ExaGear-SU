.class public abstract Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner;
.super Ljava/lang/Object;
.source "AutowiredPropertiesScanner.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listAutowiringRequests(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/container/impl/AutowiringRequest;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    const-class v1, Lcom/eltechs/axs/container/annotations/Autowired;

    .line 27
    invoke-static {v1}, Lcom/eltechs/axs/helpers/ReflectionHelpers$Filters;->instanceMethodsBearingAnnotation(Ljava/lang/Class;)Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner$1;

    invoke-direct {v2, v0}, Lcom/eltechs/axs/container/impl/AutowiredPropertiesScanner$1;-><init>(Ljava/util/ArrayList;)V

    .line 50
    :try_start_0
    invoke-static {p0, v2, v1}, Lcom/eltechs/axs/helpers/ReflectionHelpers;->doWithMethods(Ljava/lang/Class;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodCallback;Lcom/eltechs/axs/helpers/ReflectionHelpers$MethodFilter;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    .line 56
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-object v0
.end method
